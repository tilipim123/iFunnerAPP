import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:stream_games/model/user_model.dart';
import '../page_main.dart';
import 'Wigets/sign_Up_Button.dart';

class login extends StatefulWidget {

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _scaffoldKey  = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        body: ScopedModelDescendant<UserModel>(
            builder: (context, child, model){
              if(model.isLoading)
                return Center(child: CircularProgressIndicator(),);
              return  Form(
                  child: ListView(
                    padding: EdgeInsets.all(20),
                    children: <Widget>[
                      Image.asset("assets/ifunnerclaro.png",
                        width: 200,
                        height: 200,
                        fit: BoxFit.contain,),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: "E-mail",
                        ),
                        style: GoogleFonts.rubik(
                            color: Colors.black54,
                            fontSize: 15
                        ),
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
                      SizedBox(height: 30,
                      ),
                      SizedBox(
                        height: 50,
                        child: RaisedButton(
                          color: Colors.deepOrangeAccent,
                          shape:  new RoundedRectangleBorder(borderRadius:
                          new BorderRadius.circular(30)
                          ),
                          child: Text("Login",
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          ),
                          onPressed: (){

                            model.signIn(
                                email: _emailController.text,
                                pass: _passController.text,
                                onSuccess: _onSuccess,
                                onFail: _onFail
                            );
                          },
                        ),
                      ),
                      SignUpButton(),
                    ],
                  )
              );
            }
        )
    );
  }
  void _onSuccess(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
  }
  void _onFail(){
    _scaffoldKey.currentState.showSnackBar(
        SnackBar(content: Text("Falha ao Entrar"),
          backgroundColor: Colors.redAccent,
          duration: Duration(seconds: 3),
        )
    );
  }
}