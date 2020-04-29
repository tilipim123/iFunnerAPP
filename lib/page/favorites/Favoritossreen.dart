import 'package:flutter/material.dart';
import 'package:stream_games/controller/scroll_horizontal_game.dart';
import 'package:stream_games/model/repository.dart';

const request = "https://ifunner-server.herokuapp.com/Favoritos";
class Favoritossreen extends StatefulWidget {
  Favoritossreen({Key key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<Favoritossreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 40, 10, 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),

                    ),
                  ),
                ]),
          ),
          HorizontalGameController(newGamesList),
          Divider(height: 2, indent: 8),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 8, 8),
          ),
        ],
      ),
    );
  }
}