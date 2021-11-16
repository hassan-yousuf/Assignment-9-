// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hakathon/home.dart';

class Prfile extends StatefulWidget {
  const Prfile({Key? key}) : super(key: key);

  @override
  _PrfileState createState() => _PrfileState();
}

class _PrfileState extends State<Prfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Home()));
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.red,
            )),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 80, right: 50),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/mk.jpg'),
                ),
              ),
              Text(
                'Hassan Yousuf',
                textScaleFactor: 2,
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  'Email',
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text('mughal@gmail.com'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Phone Number',
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: Text('03232838750'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Date Of Birth',
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: Text('  9 - May - 2009  '),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'City',
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: Text('Karachi'),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
