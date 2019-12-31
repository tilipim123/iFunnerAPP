import 'package:flutter/material.dart';
import 'package:stream_games/page/Login/Wigets/input_field.dart';
import 'input_field.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
          child: Column(
            children: <Widget>[
              InputField(
                hint: "Usuario",
                obscure: false,
                icon: Icons.person_outline,
              ),
              InputField(
                hint: "Senha",
                obscure: true,
                icon: Icons.lock_outline,
              )
            ],
          )
      ),
    );
  }
}
