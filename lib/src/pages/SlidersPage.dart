import 'package:flutter/material.dart';

class SlidersPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SlidersPage> {
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() => Scaffold(
        appBar: AppBar(title: Text('Pagina de Sliders y Check')),
        body: _sliders(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context); //me regreso a la pagina anterior
          },
          child: Icon(Icons.arrow_back),
        ),
      );

  Widget _sliders() {
    return Container(
      padding: EdgeInsets.only(top: 50.0),
      child: Column(
        children: <Widget>[
          _createSliders(),
          _createCheckTile(),
          Expanded(
            child: _createImage(),
          ),
          _createCheck(),
          _createSwitchTile()
        ],
      ),
    );
  }

  Widget _createSliders() {
    return Slider(
        value: _slidervalue,
        min: 10.0,
        max: 400.0,
        divisions: 8,
        label: _slidervalue.round().toString(),
        onChanged: (_enableCheck)
            ? null
            : (valor) {
                setState(() {
                  print(valor);
                  _slidervalue = valor;
                });
              });
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://conceptodefinicion.de/wp-content/uploads/2020/09/universo.jpg'),
      width: _slidervalue,
      fit: BoxFit.contain,
    );
  }

  Widget _createCheck() {
    return Checkbox(
        value: _enableCheck,
        onChanged: (value) {
          setState(() {
            _enableCheck = value;
          });
        });
  }

  Widget _createCheckTile() {
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _enableCheck,
        onChanged: (bool value) {
          setState(() {
            _enableCheck = value;
          });
        });
  }

  Widget _createSwitchTile() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _enableCheck,
        onChanged: (bool value) {
          setState(() {
            _enableCheck = value;
          });
        });
  }

  bool _enableCheck = false;
  double _slidervalue = 100.0;
}
