import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
        title: Text("Favoritos", style: TextStyle(color: Colors.white, fontSize: 25),),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}

