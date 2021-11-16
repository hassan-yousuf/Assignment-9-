// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hakathon/home.dart';

class Favo extends StatefulWidget {
  const Favo({Key? key}) : super(key: key);

  @override
  _FavoState createState() => _FavoState();
}

class _FavoState extends State<Favo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.red,
            )),
        title: Row(
          children: [
            Text(
              'My Favorites',
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
