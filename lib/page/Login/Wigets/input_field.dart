import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final String hint;
  final bool obscure;
  final IconData icon;

  InputField({this.hint, this.obscure, this.icon});

  @override
    Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xff0f213e),
            width: 0.5,
          )
        )
      ),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(
          color: Color(0xFF0f213e),
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Color(0xFF0f213e),
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Color(0xFF0f213e),
            fontSize: 15,
          ),
          contentPadding: EdgeInsets.only(
            top: 30,
            bottom: 30,
            right: 30,
            left: 5,
          )
        ),
      ),
    );
  }
}
