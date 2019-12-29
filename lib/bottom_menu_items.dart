import 'package:flutter/material.dart';
import 'package:stream_games/icons.dart';

enum BottomMenu {
  games,
  movies,
  browse,
  my,
  more,
}

String menuItemName(BottomMenu layoutType) {
  switch (layoutType) {
    case BottomMenu.games:
      return 'Início';
    case BottomMenu.movies:
      return 'Busca';
    case BottomMenu.browse:
      return 'Localização';
    case BottomMenu.my:
      return 'Perfil';
    case BottomMenu.more:
      return 'Mais';
    default:
      return '';
  }
}

IconData menuIcon(BottomMenu layoutType) {
  switch (layoutType) {
    case BottomMenu.games:
      return controllerIcon;
    case BottomMenu.movies:
      return movieIcon;
    case BottomMenu.browse:
      return browseIcon;
    case BottomMenu.my:
      return profileIcon;
    case BottomMenu.more:
      return moreIcon;
    default:
      return null;
  }
}
