import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Wigets/page_myitens.dart';

class Screenuser extends StatefulWidget {
  @override
  _ScreenuserState createState() => _ScreenuserState();
}

class _ScreenuserState extends State<Screenuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: Column(
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).viewPadding.top),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 40,
                          height: 40,
                          child: RaisedButton(
                            color: Colors.deepOrangeAccent,
                            shape:  new RoundedRectangleBorder(borderRadius:
                            new BorderRadius.circular(8),
                            ),
                            onPressed: (){},
                            child: Icon(
                              Feather.settings,
                              color: Colors.white,
                            ),
                              padding: EdgeInsets.all(5)
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: RaisedButton(
                            shape:  new RoundedRectangleBorder(borderRadius:
                            new BorderRadius.circular(8)
                            ),
                            onPressed: (){},
                            child: Center(
                              child: Text(
                                '0',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.oxygen(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                            height: 65,
                            width: 65,
                            child: Image.asset("assets/ifunnerclaro.jpg"),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Fulado da Silva',
                        style: GoogleFonts.oxygen(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Editar Perfil',
                        style: GoogleFonts.oxygen(
                            color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Myuser(),
          )
        ],
      ),
    );
  }
}
