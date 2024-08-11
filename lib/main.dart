import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFF),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 112,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/card.png'),
                radius: 110,
              ),
            ),
            Text(
              'Mr.Smith',
              style: TextStyle(
                  fontSize: 28, color: Colors.white, fontFamily: 'Pacifico'),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF5d7990),
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Color(0xFF5d7990),
              thickness: 1.5,
              indent: 60,
              endIndent: 60,
              height: 12,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.phone, size: 32, color: Color(0xFF26435f)),
                title: Text(
                  '(+02)1274860153',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.mail, size: 32, color: Color(0xFF26435f)),
                title: Text(
                  'Smith@gmail.com',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
