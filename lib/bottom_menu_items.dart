import 'package:flutter/material.dart';
import 'package:stream_games/icons.dart';

enum BottomMenu {
  home,
  categoria,
  //browse,
  favorites,
  perfil,
}

String menuItemName(BottomMenu layoutType) {
  switch (layoutType) {
    case BottomMenu.home:
      return 'Serviços';
    case BottomMenu.categoria:
      return 'Busca';
    /*case BottomMenu.browse:
      return 'Localização';*/
    case BottomMenu.favorites:
      return 'Favoritos';
    case BottomMenu.perfil:
      return 'Perfil';
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
    /*case BottomMenu.browse:
      return browseIcon;*/
    case BottomMenu.favorites:
      return moreIcon;
    case BottomMenu.perfil:
      return profileIcon;
    default:
      return null;
  }
}
