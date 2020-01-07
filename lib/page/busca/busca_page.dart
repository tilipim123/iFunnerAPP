import 'package:flutter/material.dart';

class Buscapage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 5,
          left: 15,
          right: 3,
          child: TextField(
            style: TextStyle(color: Colors.black26),
            decoration: InputDecoration(
              hintText: "Pesquisa",
              hintStyle: TextStyle(color: Colors.black26),
              icon: Icon(Icons.search, color: Colors.deepOrangeAccent,),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
