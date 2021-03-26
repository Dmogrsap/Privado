import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Pagina de Avatar'),
        ),
        body: ListView(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 80,
              child: CircleAvatar(
                backgroundColor: Colors.cyan[100],
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/564x/67/54/78/675478c7dcc17f90ffa729387685615a.jpg'),
                radius: 78,
              ),
            ),
            buildListTile(
              title: 'Edgar',
              image: NetworkImage(
                  'https://gcdn.emol.cl/basquetbol/files/2011/02/spalding-nba.jpg'),
            ),
            buildListTile(
              title: 'Daniel',
              image: AssetImage('assets/batman_logo.png')
            ),
            buildListTile(
              title: 'Carlos',
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDWOMHS4ixU1Nk91CSlIW9Tv_qjfa0QA6uWQ&usqp=CAU'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context); //me regreso a la pagina anterior
          },
          child: Icon(Icons.arrow_back),
        ),
      );

  Widget buildListTile({
    @required String title,
    ImageProvider image,
  }) =>
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: Colors.cyan[100],
          backgroundImage: image,
          foregroundColor: Colors.blue,
          radius: 50,
          onBackgroundImageError: image != null
              ? (e, stackTrace) {
                  print('e: ${e}');
                }
              : null,
          child: image == null
              ? Text(
                  title[0].toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                )
              : Container(height: 0, width: 0),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}
