import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Pagina de Cards'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context); //me regreso a la pagina anterior
          },
          child: Icon(Icons.arrow_back),
        ),
        //body: _card(),
        body: _listcards(context),
      );

  Widget _listcards(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(5.0),
      children: <Widget>[
        _cardExample(context),
        SizedBox(height: 30.0),
        _imageCard(),
        SizedBox(height: 30.0),
        _cardExample(context),
      ],
    );
  }

  Widget _imageCard() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 100),
            image: NetworkImage(
                'https://img.wallpapersafari.com/desktop/1366/768/72/47/Pkql0j.jpg'),
            placeholder: AssetImage('assets/ZZ5H.gif'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("Amon Amarth"),
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Ok')),
            ],
          )
        ],
      ),
    );
  }

  Widget _card() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Tarjeta 1'),
            leading: Icon(Icons.ac_unit_rounded),
            subtitle: Text('Tarjeta de presentación 1'),
          ),
          const SizedBox(width: 8),
          ListTile(
            title: Text('Tarjeta 2'),
            leading: Icon(Icons.ac_unit_rounded),
            subtitle: Text('Tarjeta de presentación 2'),
          ),
        ],
      ),
    );
  }

  Widget _cardExample(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {/* ... */},
                // onPressed: () {​​​​/* ... */}​​​​,
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LISTEN'),
                onPressed: () {/* ... */},
                //onPressed: () {​​​​/* ... */}​​​​,
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
