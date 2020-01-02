import 'package:flutter/material.dart';
import 'package:stream_games/page/Login/Wigets/button_login.dart';
import 'package:stream_games/page/Login/Wigets/form_container.dart';
import 'package:stream_games/page/Login/Wigets/sign_Up_Button.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login>
  with SingleTickerProviderStateMixin {

  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    
    _animationController = AnimationController(vsync: this,
      duration: Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 70, bottom: 30),
                      child: Image.asset("assets/ifunnerclaro.png",
                      width: 230,
                      height: 230,
                      fit: BoxFit.contain,),
                    ),
                    FormContainer(),
                    SignUpButton()
                  ],
                ),
                ButtonLogin(
                  controller: _animationController.view
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
