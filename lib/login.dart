import 'package:flutter/material.dart';
import 'inputdata.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.android,
                  size: 50,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                'Aplikasi kasir',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                prefixIcon: Icon(
                  Icons.person,
                  size: 40,
                ),
                hintText: 'Masukan id Admin',
                hintStyle: TextStyle(color: Colors.white),
                labelText: 'Admin ID',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.black,
                // textColor: Colors.white,
                child: Text(
                  'Masuk',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
