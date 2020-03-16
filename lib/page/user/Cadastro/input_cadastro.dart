import 'package:flutter/material.dart';

class Inputcadastro extends StatelessWidget {

  final String hint;
  final bool obscure;
  final IconData icon;
  final Stream<String> stream;
  final Function(String) onChanged;
  final operator;

  Inputcadastro({this.hint, this.obscure, this.icon, this.stream, this.onChanged, this.operator});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: stream,
      builder: (context, snapshot) {
        return Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black87,
                width: 0.5,
              )
            )
          ),
          child: TextFormField(
            onChanged: onChanged,
            obscureText: obscure,
            style: TextStyle(color: Colors.black87,
            ),
            decoration: InputDecoration(
              icon: Icon(icon,
              color: Colors.black87,
              ),
              border: InputBorder.none,
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.black87,
                fontSize: 15,
              ),
              contentPadding: EdgeInsets.only(
                top: 20,
                right: 30,
                bottom: 30,
                left: 5,
              ),
              errorText: snapshot.hasError ? snapshot.error : null,
            ),
          ),
        );
      }
    );
  }
}
