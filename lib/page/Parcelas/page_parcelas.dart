import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_games/page/user/Screen_User/page_user.dart';

class SreenParcelas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
            elevation: 0.0,
          title: Text("Parcelas", style: GoogleFonts.oxygen(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 20),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.deepOrangeAccent),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Screenuser())),
          ),
          bottom: TabBar(
            indicatorColor: Colors.deepOrangeAccent,
            tabs: <Widget>[
              Tab(child: Text("Em Aberto", style: TextStyle(color: Colors.black54),),),
              Tab(child: Text("Pagas", style: TextStyle(color: Colors.black54),),),
            ],
          ),
        ),
        body: TabBarView(
            children: [
              Container(),
              Container(),
            ]
        ),
        //extendBodyBehindAppBar: true,
      ),
    );
  }
}
