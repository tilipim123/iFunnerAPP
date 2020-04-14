import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Buscasreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: TextField(
          style: TextStyle(color: Colors.black26),
          decoration: InputDecoration(
            hintText: "Pesquisa",
            hintStyle: TextStyle(color: Colors.black26),
            icon: Icon(Icons.search,
              color: Colors.deepOrangeAccent,),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
