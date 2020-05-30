import 'package:flutter/material.dart';
import 'package:flutter_web/routing/route_names.dart';
import 'package:flutter_web/views/about/about_view.dart';
import 'package:flutter_web/views/episodes/episodes_view.dart';
import 'package:flutter_web/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case EpisodesRoute:
      return _getPageRoute(EpisodesView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}
