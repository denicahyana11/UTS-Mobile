import 'package:flutter/material.dart';
import 'hasil.dart';
import 'profil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String idpembeli = '';
  String nbarang = '';
  int jbarang = 0;
  int harga = 0;
  int uangpembeli = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Aplikasi Kasir'),
        actions: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration:
            BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            child: Center(
              child: IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profil()));
                },
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Image.asset(
                  'images/kasir4.jpg',
                  fit: BoxFit.fitWidth,
                )),
            Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Id Pembeli:',
                      style: TextStyle(fontFamily: 'serif', fontSize: 18),
                    ),
                    Container(
                      // color: Colors.blue[900],
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            idpembeli = txt;
                          });
                        },
                        decoration: InputDecoration(
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 0),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Nama Barang:',
                      style: TextStyle(fontFamily: 'serif', fontSize: 18),
                    ),
                    Container(
                      // color: Colors.blue[900],
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            nbarang = txt;
                          });
                        },
                        decoration: InputDecoration(
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 0),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Jumlah Barang:',
                      style: TextStyle(fontFamily: 'serif', fontSize: 18),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            jbarang = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 0),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Harga Satuan Barang:',
                      style: TextStyle(fontFamily: 'serif', fontSize: 18),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            harga = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 0),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Jumlah Uang yang:',
                      style: TextStyle(fontFamily: 'serif', fontSize: 18),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            uangpembeli = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Proses(
                          idpembeli: idpembeli,
                          nbarang: nbarang,
                          jumlahbarang: jbarang,
                          hargabarang: harga,
                          jumlahuang: uangpembeli,
                        )),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.black,
                // textColor: Colors.white,
                child: Text(
                  'HITUNG',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
