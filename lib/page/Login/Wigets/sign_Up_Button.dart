import 'package:flutter/material.dart';
import 'package:stream_games/page/user/Cadastro/page_cadastro.dart';

class SignUpButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(
        top: 160,
      ),
      onPressed: (){
        Navigator.of(context).pushReplacement(
         MaterialPageRoute(builder: (context) => Cadastrologin())
        );
      },
      child: Text("Não Possui um conta? Cadastre-se",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.w300,
        color: Colors.black,
        fontSize: 16,
        letterSpacing: 0.5,
      ),
      ),
    );
  }
}
