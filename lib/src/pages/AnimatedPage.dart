import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  AnimatedPage({Key key}) : super(key: key);

  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animaciones'),
        ),
        body: _animacion(),
        floatingActionButton: FloatingActionButton(
            onPressed: _onClick, child: Icon(Icons.play_arrow)));
  }

  Widget _animacion() {
    return Center(
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: _width,
        height: _heigth,
        decoration: BoxDecoration(color: _color, borderRadius: _border),
      ),
    );
  }

  Future<void> _onClick() async {
    final snackBar = SnackBar(content: Text('Generando animacion'));
    final random = Random();

    setState(() {
      _heigth = random.nextInt(300).toDouble();
      _width = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 100);
      _border = BorderRadius.circular(random.nextInt(255).toDouble());
    });

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  double _width = 50.0, _heigth = 50;
  Color _color = Colors.amber;
  BorderRadiusGeometry _border = BorderRadius.circular(10.0);
}
