import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_games/page/Cadastro/form_cadastro.dart';

class SignUpButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: SizedBox(
        height: 50,
        child: RaisedButton(
          color: Colors.white,
          shape:  new RoundedRectangleBorder(borderRadius:
          new BorderRadius.circular(30)
          ),
          child: Text("Cadastre-se",
            style: GoogleFonts.oxygen(
                color: Color(0xFF0f213e),
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),
          ),
          onPressed: (){
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Formcadastro())
            );
          },
        ),
      ),
    );
  }
}
