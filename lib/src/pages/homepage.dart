//import 'dart:js';

import 'package:flutter/material.dart';
//import 'package:listas/src/pages/alert.dart';
import 'package:listas/src/provider/jsonprovider.dart';
import 'package:listas/src/utils/StringIcon.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() => Scaffold(
        appBar: AppBar(
          title: Text('Components'),
        ),
        body: _lista(),
      );

  Widget _lista() {
    return FutureBuilder(
        future: jsonproveder.reload(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return ListView(children: _rows(snapshot.data, context));
        });
    //jsonproveder.reload();
    //return ListView();
  }

  List<Widget> _rows(List<dynamic> data, BuildContext context) {
    final List<Widget> row = [];
    data.forEach((element) {
      final temp = ListTile(
          title: Text(element['texto']),
          subtitle: Text('subtitulo ${element['ruta']}'),
          leading: getIconFromString(element['icon']),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            //manda llamar a una pagina
            //acabo de crear la ruta a la pagina a cargar(aun no se carga)
            //final route = MaterialPageRoute(builder: (context) => AlertPage());
            //como ya esta la ruta ahora se carga
            //Navigator.push(context, route);

            Navigator.pushNamed(context, element['ruta']);
          });
      row.add(temp);
      row.add(Divider());
    });
    return row;
  }
}
/*
  final List<Widget> _tags = [
    ListTile(
        title: Text('Encendido'),
        subtitle: Text('subtitulo List Tile Uno'),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.ac_unit_outlined),
        onTap: () {}),
    Divider(),
    ListTile(
        title: Text('Apagado'),
        subtitle: Text('subtitulo List Tile Dos'),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.ac_unit_outlined),
        onTap: () {}),
  ];
}*/
