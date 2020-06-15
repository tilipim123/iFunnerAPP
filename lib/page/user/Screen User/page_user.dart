import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Wigets/page_myitens.dart';

class Screenuser extends StatefulWidget {
  @override
  _ScreenuserState createState() => _ScreenuserState();
}

class _ScreenuserState extends State<Screenuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil", style: TextStyle(color: Colors.white, fontSize: 25),),
        backgroundColor: Colors.transparent,
      ),
      body: Myuser(),
    );
  }
}
