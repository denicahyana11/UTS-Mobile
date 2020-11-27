import 'dart:ui';
import 'package:flutter/material.dart';
import 'profil.dart';

class Proses extends StatelessWidget {
  Proses({
    @required this.jumlahbarang,
    @required this.hargabarang,
    @required this.jumlahuang,
    this.idpembeli,
    this.nbarang,
  });
  final int jumlahbarang;
  final int hargabarang;
  final String idpembeli;
  final String nbarang;
  final int jumlahuang;

  @override
  Widget build(BuildContext context) {
    int jumlah = jumlahbarang * hargabarang;
    String total = "$jumlah";
    int sisa = jumlahuang - jumlah;
    String kembalian = "$sisa";
    String money = "$jumlahuang";
    String hbarang = "$hargabarang";
    String jbarang = "$jumlahbarang";

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
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
                child: Image.asset(
                  'images/kasir4.jpg',
                  fit: BoxFit.fitWidth,
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.person),
                    Text(
                      '  id Pembeli      :  ' + idpembeli,
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
                    Icon(Icons.library_books),
                    Text(
                      '  Nama Barang       :  ' + nbarang,
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
                    Icon(Icons.library_books),
                    Text(
                      '  Jumlah Barang     :  ' + jbarang,
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
                    Icon(Icons.library_books),
                    Text(
                      '   Harga Barang      : Rp. ' + hbarang,
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
                    Icon(Icons.format_list_bulleted),
                    Text(
                      '   Total Belanja        : Rp. ' + total,
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
                    Icon(Icons.format_list_bulleted),
                    Text(
                      '   Uang Pembeli      :  Rp. ' + money,
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
                    Icon(Icons.format_list_bulleted),
                    Text(
                      '   Kembalian              : Rp. ' + kembalian,
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
