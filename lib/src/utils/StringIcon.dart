import 'package:flutter/material.dart';

final _iconos = <String, IconData>{
  "addalert": Icons.add_alert,
  "accessibilty": Icons.accessibility,
  "folder_open": Icons.folder_open,
  "donut_large": Icons.donut_large,
  "input": Icons.input,
  "tune": Icons.tune,
  "list": Icons.list
};

Icon getIconFromString(String name) {
  return Icon(
    _iconos[name],
  );
}
