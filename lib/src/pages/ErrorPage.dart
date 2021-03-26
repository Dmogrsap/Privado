import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('ERROR'),
    ),
    backgroundColor: Colors.red,
    body: Center(
      child: Container(
        child: Text(
          'ERROR, LA PAGINA NO EXISTE', 
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () { 
        Navigator.pop(context); //me regreso a la página anterior(padre)
       },
      child: Icon(Icons.arrow_back)
    ),
  );
}
