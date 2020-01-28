import 'package:flutter/material.dart';
import 'package:stream_games/page/user/Cadastro/button_cadastro.dart';

import 'form_cadastro.dart';

class Cadastrologin extends StatefulWidget {
  @override
  _CadastrologinState createState() => _CadastrologinState();
}

class _CadastrologinState extends State<Cadastrologin>
    with SingleTickerProviderStateMixin
{
  AnimationController _animationController;


  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this,
      duration: Duration(seconds: 2)
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
                    Padding(padding: EdgeInsets.only(top: 20, bottom: 1),
                    child: Image.asset("assets/ifunnerclaro.png",
                      width: 230,
                      height: 230,
                      fit: BoxFit.contain,
                    ),
                    ),
                    Formcadastro(),
                  ],
                ),
              ],
            ),
            Buttoncadastro(
                controller: _animationController.view
            ),
          ],
        ),
      ),
    );
  }
}
