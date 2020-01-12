import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Wigets/categoria_tile.dart';

class Categoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: Firestore.instance.collection("Categorias").getDocuments(),
      builder: (context, snapshot){
        if(!snapshot.hasData) return Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Colors.deepOrangeAccent),
        ),
        );
        return ListView.builder(
          itemCount: snapshot.data.documents.length,
          itemBuilder: (context, index){
            return CategoriaTile(snapshot.data.documents[index]);
          },
        );
      },
    );
  }
}
