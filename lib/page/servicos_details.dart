import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stream_games/component/item_description.dart';
import 'package:stream_games/component/item_header_game.dart';
import 'package:stream_games/controller/scroll_horizontal_screenshots.dart';
import 'package:stream_games/model/game.dart';

class ServicoDetailsPage extends StatefulWidget {
  ServicoDetailsPage(this.game, {Key key}) : super(key: key);

  final Game game;

  @override
  _GameDetailsPageState createState() => _GameDetailsPageState();
}

class _GameDetailsPageState extends State<ServicoDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      clipBehavior: Clip.hardEdge,
      child: SingleChildScrollView(
        child: Column(
          children: [
            GameDetailHeader(widget.game),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
              child: SizedBox(
                width: double.infinity,
                // height: double.infinity,
                child: RaisedButton(
                  onPressed: () => {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Favoritos",
                        style: Theme.of(context)
                            .textTheme
                            .subhead
                            .apply(color: Colors.white),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  padding: const EdgeInsets.all(12),
                  color: Colors.deepOrange,
                  highlightColor: Colors.deepOrangeAccent,
                  splashColor: Colors.deepOrangeAccent,
                  elevation: 8,
                  highlightElevation: 10,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: SizedBox(
                width: double.infinity,
                // height: double.infinity,
                child: OutlineButton(
                  onPressed: () => {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.attach_money,
                          color: Colors.deepOrange,
                        ),
                      ),
                      Text(
                        "Comprar",
                        style: Theme.of(context)
                            .textTheme
                            .subhead
                            .apply(color: Colors.deepOrange),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  padding: const EdgeInsets.all(12),
                  borderSide: BorderSide(color: Colors.deepOrange, width: 4),
                  color: Colors.deepOrange,
                  highlightColor: Colors.white70,
                  splashColor: Colors.deepOrangeAccent.shade200,
                  highlightElevation: 0,
                  highlightedBorderColor: Colors.deepOrangeAccent.shade200,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                child: DescriptionText(widget.game.description)),
            HorizontalScreenshotController(widget.game.screenshots),
          ],
        ),
      ),
    );
  }
}
