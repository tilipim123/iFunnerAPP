import 'package:flutter/material.dart';
import 'package:stream_games/page/user/Cadastro/input_cadastro.dart';

class Formcadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Form(
        child: Column(
          children: <Widget>[
            Inputcadastro(
              hint: "Nome Completo",
              obscure: false,
              icon: Icons.person,
              ),
            Inputcadastro(
              hint: "E-mail",
              obscure: false,
              icon: Icons.email,
            ),
            Inputcadastro(
              hint: "CPF",
              obscure: false,
              icon: Icons.credit_card,
            ),
            Inputcadastro(
              hint: "Senha",
              obscure: true,
              icon: Icons.lock,
            ),
            Inputcadastro(
              hint: "Confirma a Senha",
              obscure: true,
              icon: Icons.lock,
            ),
          ],
        ),
      ),
    );
  }
}
