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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
            height: 100,
            width: 300,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.person_outline,
                  color: Colors.deepOrangeAccent,
                  size: 40,
                ),
                Text("Fulando da Silva Costa",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "Editar",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  onTap: (){

                  },
                )
              ],
            ),
        ),
      ),
    );
  }
}
