import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stream_games/page/page_main.dart';

class Buttoncadastro extends StatelessWidget {

  final AnimationController controller;

  Buttoncadastro({this.controller});

  @override
  Widget _builderAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
      child: InkWell(
        onTap: ()=> Navigator.push(context, MaterialPageRoute
          (builder: (context) => MainPage())
        ),
        child: Container(
            width: 100,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.deepOrange,
                borderRadius: BorderRadius.all(Radius.circular(25))
            ),
            child: Text("Cadastrar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.3,
              ),)
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _builderAnimation,
    );
  }
}
