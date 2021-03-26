//convertir archivo json a cadena de texto
import 'package:flutter/services.dart' show rootBundle;

//convertir un strin json a un map
import 'dart:convert';

class _JsonProvider {
  List<dynamic> datos; // se guarda cualquier cosa

  _JsonProvider() {
    datos = [];
    // load();
  }

  void load() async {
    rootBundle.loadString('data/plantilla.json').then((data) {
      //print(data);
      Map jsonmap = jsonDecode(data); //cambio de cadena json a map
      print(jsonmap['rutas']);
      datos = jsonmap['rutas'];
    });
  }

  Future<List<dynamic>> reload() async {
    final raw = await rootBundle.loadString('data/plantilla.json');
    Map jsonmap = jsonDecode(raw);
    print(jsonmap['rutas']);
    datos = jsonmap['rutas'];
    //print(jsonmap['rutas']);
    return datos;
  }
}

final jsonproveder = _JsonProvider();
