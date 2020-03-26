import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:stream_games/model/user_model.dart';
import 'package:stream_games/page/Login/page_login.dart';

class Formcadastro extends StatefulWidget {

  @override
  _FormcadastroState createState() => _FormcadastroState();
}

class _FormcadastroState extends State<Formcadastro> {

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _cpfController = TextEditingController();
  final _passController = TextEditingController();
  final _scaffoldKey  = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Cadastro",style:
         GoogleFonts.oxygen(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18
        ),),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => login())
            ),
        ),
      ),
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          if(model.isLoading)
            return Center(child: CircularProgressIndicator(),);
          return  Form(
              child: ListView(
                padding: EdgeInsets.all(20),
                children: <Widget>[
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Nome Completo",
                    ),
                    style: GoogleFonts.rubik(
                        color: Colors.black54,
                        fontSize: 15
                    ),
                  ),
                  SizedBox(height: 15,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: "E-mail",
                    ),
                    style: GoogleFonts.rubik(
                        color: Colors.black54,
                        fontSize: 15
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 15,
                  ),
                  TextFormField(
                    controller: _cpfController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.contact_mail),
                      hintText: "CPF",
                    ),
                    style: GoogleFonts.rubik(
                        color: Colors.black54,
                        fontSize: 15
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 15,
                  ),
                  TextFormField(
                    controller: _passController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: "Senha",
                    ),
                    style: GoogleFonts.rubik(
                        color: Colors.black54,
                        fontSize: 15
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: RaisedButton(
                      color: Colors.deepOrangeAccent,
                      shape:  new RoundedRectangleBorder(borderRadius:
                      new BorderRadius.circular(30)
                      ),
                      child: Text("Criar Conta",
                      style: GoogleFonts.oxygen(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                      ),
                      onPressed: (){

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
              )
          );
        }
      )
    );
  }
  void _onSuccess(){
    _scaffoldKey.currentState.showSnackBar(
        SnackBar(content: Text("Usuário criado com sucesso!"),
          backgroundColor: Colors.lightGreen,
          duration: Duration(seconds: 3),
        )
    );
    Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.of(context).pop();
    }
    );
  }
  void _onFail(){
    _scaffoldKey.currentState.showSnackBar(
        SnackBar(content: Text("Falha ao criar o usuário"),
          backgroundColor: Colors.redAccent,
          duration: Duration(seconds: 3),
        )
    );
  }
}
