import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Pagina de alertas'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context); //me regreso a la pagina anterior
          },
          child: Icon(Icons.arrow_back),
        ),
        body: _alerta(context),
      );

  Widget _alerta(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          _showDialogAlert(context);
        },
        child: Text('Alerta simple'),
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(), textStyle: TextStyle(fontSize: 25)),
      ),
    );
  }

  void _showDialogAlert(BuildContext context) {
    showDialog(
        context: context,
       barrierDismissible: false, //funcion para poder cerrar el dialogo, la ponemos false porque 
                                  //abajo ya tenemos el Navigator.of.pop, pero si no lo llega a tener
                                  // se deja en true para poder volver a la pantalla anteriro
        builder: (context) => AlertDialog(
              title: Text('Alerta'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[Text('Mensaje de Alerta'), FlutterLogo()],
              ),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      // si acepta se agrega metodo para regresar a a la ventana anterior
                      Navigator.of(context).pop();
                    },
                    child: Text('Aceptar'))
              ],
            ));
  }
}

// Este es lo mismo de arriba pero de la parte de la documentacion de flutter

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('AlertDialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('This is a demo alert dialog.'),
              Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
