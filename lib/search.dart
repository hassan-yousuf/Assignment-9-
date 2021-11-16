// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hakathon/home.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
        title: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            hintText: 'Search...',
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
