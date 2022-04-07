import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ContactCardPage(),
            ],
          ),
        ),
      ),
    ),
  ));
}

class ContactCardPage extends StatelessWidget {
  const ContactCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: Column(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://img.icons8.com/plasticine/100/000000/user.png"),
              radius: 50,
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              "Abdul Rehman",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'zenkurenaido',
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.phone),
              title: Text(
                "+9234567890",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Lato',
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.email),
              title: Text(
                "testemail@123",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Lato',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
