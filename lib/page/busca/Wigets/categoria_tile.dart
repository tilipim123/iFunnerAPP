import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CategoriaTile extends StatelessWidget {
  final DocumentSnapshot category;

  CategoriaTile(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Card(
        child: ExpansionTile(
          title: Text(
            category.data["Title"],
            style: TextStyle(color: Color(0xff0f213e),
            fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
