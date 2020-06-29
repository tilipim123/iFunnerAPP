import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';

const request = "https://ifunner-server.herokuapp.com/Favoritos";

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}

class Favoritossreen extends StatefulWidget {
  @override
  _FavoritossreenState createState() => _FavoritossreenState();
}

class _FavoritossreenState extends State<Favoritossreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Favoritos", style: GoogleFonts.oxygen(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        fontSize: 23),
        //centerTitle: true,
      ),
        leading: Container(),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
    );
  }
}

