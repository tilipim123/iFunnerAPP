import 'package:flutter/material.dart';
import 'package:stream_games/bloc/cadastro_bloc.dart';
import 'package:stream_games/page/user/Cadastro/input_cadastro.dart';

class Formcadastro extends StatelessWidget {
  final _CadastroBloc = CadastroBloc();

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
              stream: _CadastroBloc.outEmail,
              onChanged: _CadastroBloc.changeEmail,
            ),
            Inputcadastro(
              hint: "CPF",
              obscure: false,
              icon: Icons.credit_card,
              stream: _CadastroBloc.outCpf,
              onChanged: _CadastroBloc.changeCPF,
            ),
            Inputcadastro(
              hint: "Senha",
              obscure: true,
              icon: Icons.lock,
              stream: _CadastroBloc.outPassword,
              onChanged: _CadastroBloc.changePassword,
            ),
            Inputcadastro(
              hint: "Confirma a Senha",
              obscure: true,
              icon: Icons.lock,
              stream: _CadastroBloc.outPassword,
              onChanged: _CadastroBloc.changePassword,
            ),
          ],
        ),
      ),
    );
  }
}
