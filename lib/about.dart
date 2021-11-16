// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
          title: Text(
            'About Us',
            style: TextStyle(color: Colors.red),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 500,
            width: 450,
            color: Colors.redAccent,
            child: Center(
              child: Column(children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/ee.png'),
                ),
                Text(
                  'Drop Line About Us',
                  style: TextStyle(color: Colors.white70),
                  textScaleFactor: 1.2,
                ),
                Text(
                  '...',
                  style: TextStyle(color: Colors.white70),
                  textScaleFactor: 1.2,
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('588 Julian MoterWay/Lalukhet/Karachi'),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Open Map',
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Icon(
                            Icons.phone_android,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('03232838750'),
                          SizedBox(
                            height: 15,
                          ),
                          Icon(
                            Icons.access_time,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('  Monday-Saturday  '),
                          SizedBox(
                            height: 15,
                          ),
                          Text('  09:00 AM-12:00 PM  ')
                        ],
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
        ));
  }
}
