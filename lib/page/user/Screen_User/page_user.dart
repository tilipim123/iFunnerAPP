import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Wigets/page_myitens.dart';
import 'package:google_fonts/google_fonts.dart';

class Screenuser extends StatefulWidget {
  @override
  _ScreenuserState createState() => _ScreenuserState();
}

class _ScreenuserState extends State<Screenuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Perfil", style: GoogleFonts.oxygen(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 23),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/ifunnerclaro.png"),
        )
        //centerTitle: true,
      ),
      body: Myuser(),
    );
  }
}
