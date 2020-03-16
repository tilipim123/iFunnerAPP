import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:stream_games/bloc/cadastro_bloc.dart';
import 'package:stream_games/model/user_model.dart';
import 'package:stream_games/page/user/Cadastro/input_cadastro.dart';

class Formcadastro extends StatefulWidget {
  @override
  _FormcadastroState createState() => _FormcadastroState();
}

class _FormcadastroState extends State<Formcadastro> {

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _cpfController = TextEditingController();
  final _passController = TextEditingController();
  final _CadastroBloc = CadastroBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: ScopedModelDescendant<UserModel>(
          builder: (context, child, model){
            if(model.isLoading)
              return Center(child: CircularProgressIndicator(),);
            return Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Inputcadastro(
                    operator: _nameController,
                    hint: "Nome Completo",
                    obscure: false,
                    icon: Icons.person,
                  ),
                  Inputcadastro(
                    operator: _emailController,
                    hint: "E-mail",
                    obscure: false,
                    icon: Icons.email,
                    stream: _CadastroBloc.outEmail,
                    onChanged: _CadastroBloc.changeEmail,
                  ),
                  Inputcadastro(
                    operator: _cpfController,
                    hint: "CPF",
                    obscure: false,
                    icon: Icons.credit_card,
                    stream: _CadastroBloc.outCpf,
                    onChanged: _CadastroBloc.changeCPF,
                  ),
                  Inputcadastro(
                    operator: _passController,
                    hint: "Senha",
                    obscure: true,
                    icon: Icons.lock,
                    stream: _CadastroBloc.outPassword,
                    onChanged: _CadastroBloc.changePassword,
                  ),
                  SizedBox(height: 32,),
                  SizedBox(
                    height: 50,
                    child: RaisedButton(
                      color: Colors.deepOrange,
                      shape: new RoundedRectangleBorder(borderRadius:
                      new BorderRadius.circular(30.0)),
                      child: Text("Criar Conta"
                      ),
                      textColor: Colors.white,
                      onPressed: (){
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) { currentFocus.unfocus(); }

                        Map<String, dynamic> userData = {
                          "nome": _nameController.text,
                          "email": _emailController.text,
                          "CPF": _cpfController.text
                        };
                        model.signUp(
                            userData: userData,
                            pass: _passController.text,
                            onSuccess: _onSuccess,
                            onFail: _onFail
                        );
                      },
                    ),
                  )
                ],
              ),
            );
          },
        )
    );
  }
  void _onSuccess(){
    Scaffold.of(context).showSnackBar(
        SnackBar(content: Text("Usuário criado com sucesso!"),
          backgroundColor: Colors.lightGreen,
          duration: Duration(seconds: 3),
        )
    );
    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.of(context).pop();
    }
    );
  }
  void _onFail(){
    Scaffold.of(context).showSnackBar(
        SnackBar(content: Text("Falha ao criar o usuário"),
          backgroundColor: Colors.redAccent,
          duration: Duration(seconds: 3),
        )
    );
  }
}
