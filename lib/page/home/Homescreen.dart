import 'package:flutter/material.dart';
import 'package:stream_games/controller/scroll_horizontal_game.dart';
import 'package:stream_games/model/repository.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key key}) : super(key: key);

  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 40, 10, 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Funerárias",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  InkWell(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Text(
                        "Ver tudo",
                        style: Theme.of(context).textTheme.display2,
                      ),
                    ),
                  ),
                ]),
          ),
          HorizontalGameController(newGamesList),
          Divider(height: 2, indent: 8),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 8, 8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cemitérios",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  InkWell(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Text(
                        "Ver tudo",
                        style: Theme.of(context).textTheme.display2,
                      ),
                    ),
                  ),
                ]),
          ),
          HorizontalGameController(popularGamesList),
        ],
      ),
    );
  }
}
