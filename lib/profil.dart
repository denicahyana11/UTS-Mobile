import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Kasir'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 300,
                child: Image.asset(
                  'images/deni.jpeg',
                  fit: BoxFit.fitWidth,
                )),
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.person),
                    Text(
                      'Nama  : Made Deni Cahyana',
                      style: TextStyle(fontFamily: "serif", fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.person),
                    Text(
                      'Nim  : 1815091013',
                      style: TextStyle(fontFamily: "serif", fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.location_city),
                    Text(
                      'Kelas :  Sistem Informasi 5B',
                      style: TextStyle(fontFamily: "serif", fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.person),
                    Text(
                      'Hobby :  Nongkrong',
                      style: TextStyle(fontFamily: "serif", fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
