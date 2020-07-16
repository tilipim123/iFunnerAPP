import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenAjuda extends StatefulWidget {
  @override
  _ScreenAjudaState createState() => _ScreenAjudaState();
}

class _ScreenAjudaState extends State<ScreenAjuda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Ajuda", style: GoogleFonts.oxygen(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 23),
          //centerTitle: true,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.deepOrangeAccent),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
