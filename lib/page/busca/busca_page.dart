import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buscas_recentes.dart';

class Buscapage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
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
        Buscasrecentes(),
      ],
    );
  }
}
