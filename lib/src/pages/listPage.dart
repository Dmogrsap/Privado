import 'package:flutter/material.dart';

class listPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

Widget _body(context){
  final title = 'Lista';
  return MaterialApp(
     // title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context); //me regreso a la pagina anterior
          },
          child: Icon(Icons.arrow_back),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(10, (index) {
            return Center(
              child: Text(
                'Ejemplo $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      ),
    );
  }
}
    