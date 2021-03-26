import 'Package:flutter/material.dart';

class HomeUno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() => Scaffold(
        appBar: AppBar(
          title: Text('HomuUno'),
        ),
        body: ListView(
          children: _buildRow(),
        ),
      );

  final List<Widget> _tags = [
    ListTile(
        title: Text('Encendido'),
        subtitle: Text('subtitulo List Tile Uno'),
        leading: Icon(Icons.ac_unit)),
    Divider(),
    ListTile(
        title: Text('Apagado'),
        subtitle: Text('subtitulo List Tile Dos'),
        leading: Icon(Icons.ac_unit))
  ];

  List<Widget> _buildRow() {
    List<Widget> elementos = [];
    data.forEach((element) {
      elementos.add(_buildListTile(element));
      elementos.add(Divider());
    });
    return elementos;
  }

  Widget _buildListTile(String titulo) => ListTile(
        title: Text(titulo),
        subtitle: Text('subtitulo del $titulo'),
        leading: Icon(Icons.ac_unit_outlined),
        trailing: Icon(Icons.keyboard_arrow_right),
      );

  final List<String> data = [
    'Encendido',
    'Apagado',
    'Espera',
    'Interminado',
    'falla',
    'Encendido',
    'Aoagado',
    'Espera',
    'Interminado',
    'falla'
  ];
}
