import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:stream_games/page/Home/splashscreen.dart';
import 'package:stream_games/themes.dart';
import 'model/user_model.dart';

void main() {
  runApp(FlutterGames());

}

class FlutterGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: MaterialApp(
        title: 'iFunnerAPP',
        theme: defaultTheme,
        home: Splashscreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
