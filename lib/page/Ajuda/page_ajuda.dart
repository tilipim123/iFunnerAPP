import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:stream_games/model/user_model.dart';

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
      body: Container(
          child: ScopedModelDescendant<UserModel>(
              builder: (context, child, model){
                return ListView(
                  padding: EdgeInsets.all(6),
                  children: <Widget>[
                    ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Como Cadastrar outro cartão de credito',
                        style: GoogleFonts.oxygen(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: Text("Como Cadastrar outro cartão de credito?",
                                  style: GoogleFonts.oxygen(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                                ),
                                content: Text("Text Padrão para as perguntas",
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13),
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                      child: Icon(Icons.check),
                                    onPressed: () => Navigator.pop(context),
                                  )
                                ],
                              );
                            });
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Adicionar mebros da familia',
                        style: GoogleFonts.oxygen(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: Text("Adicionar mebros da familia",
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                content: Text("Text Padrão para as perguntas",
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13),
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                      child: Icon(Icons.check),
                                    onPressed: () => Navigator.pop(context),)
                                ],
                              );
                            });
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Mudar a senha',
                        style: GoogleFonts.oxygen(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                      onTap: (){showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Mudar a senha",
                                style: GoogleFonts.oxygen(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              content: Text("Text Padrão para as perguntas",
                                style: GoogleFonts.oxygen(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 13),
                              ),
                              actions: <Widget>[
                                FlatButton(
                                    child: Icon(Icons.check),
                                  onPressed: () => Navigator.pop(context),)
                              ],
                            );
                          });},
                    ),
                    ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Alterar Endereço',
                        style: GoogleFonts.oxygen(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                      onTap: (){showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Alterar Endereço",
                                style: GoogleFonts.oxygen(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              content: Text("Text Padrão para as perguntas",
                                style: GoogleFonts.oxygen(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 13),
                              ),
                              actions: <Widget>[
                                FlatButton(
                                    child: Icon(Icons.check),
                                  onPressed: () => Navigator.pop(context),)
                              ],
                            );
                          });},
                    )
                  ],
                );
              }
          )
      ),
    );

  }
}
