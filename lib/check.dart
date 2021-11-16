// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
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
        title: Text(
          'About Item',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 400,
                width: 300,
                color: Colors.white70,
                child: Image(image: AssetImage('assets/check.jpg'))),
            ListTile(
                leading: Text(
                  'Checkers Shirt',
                  style: TextStyle(color: Colors.red),
                  textScaleFactor: 1.5,
                ),
                trailing: Text(
                  '199-/',
                  style: TextStyle(color: Colors.red),
                  textScaleFactor: 1.5,
                )),
            SizedBox(
              height: 15,
            ),
            ListTile(
              subtitle: Text(
                  'This is a Checkers Shirt. This is 62% discounted, This is very good and very cool. This is every size , design , quality. If you buy this now , you will enjoy later. This is very Brilliant , Buy now enjoy later.'),
            ),
          ],
        ),
      ),
    );
  }
}
