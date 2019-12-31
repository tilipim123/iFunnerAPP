import 'package:flutter/material.dart';
import 'package:stream_games/icons.dart';

enum BottomMenu {
  home,
  categoria,
  browse,
  my,
  more,
}

String menuItemName(BottomMenu layoutType) {
  switch (layoutType) {
    case BottomMenu.home:
      return 'Início';
    case BottomMenu.categoria:
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
    case BottomMenu.home:
      return controllerIcon;
    case BottomMenu.categoria:
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
