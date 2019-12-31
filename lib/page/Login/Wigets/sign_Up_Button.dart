import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(
        top: 160,
      ),
      onPressed: (){

      },
      child: Text("Não Possui um conta? Cadastre-se",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.w300,
        color: Colors.black,
        fontSize: 16,
        letterSpacing: 0.5,
      ),),
    );
  }
}
