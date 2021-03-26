import 'package:flutter/material.dart';
import 'package:listas/src/pages/AnimatedPage.dart';
import 'package:listas/src/pages/InputsPage.dart';
import 'package:listas/src/pages/SlidersPage.dart';
import 'package:listas/src/pages/alert.dart';
import 'package:listas/src/pages/homepage.dart';
import 'package:listas/src/pages/listPage.dart';


import 'src/pages/AvatarPage.dart';
import 'src/pages/CardPage.dart';

Map<String, WidgetBuilder> routes(BuildContext context) {
  Map<String, WidgetBuilder> rutas = {
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedPage(),
    'inputs': (BuildContext context) => InputsPage(),
    'slider': (BuildContext context) => SlidersPage(),
    'list': (BuildContext context) => listPage()
  };
  return rutas;
}
