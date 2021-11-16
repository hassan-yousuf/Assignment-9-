// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hakathon/home.dart';
import 'package:hakathon/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String password = 'js123';
  TextEditingController passwordController = TextEditingController();
  validation() async {
    if (passwordController.text == password) {
      await Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => Home()));
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Wrong Password"),
            content: Text("Please try again"),
            actions: <Widget>[
              FlatButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Login()));
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.red,
            )),
        backgroundColor: Colors.white,
        title: Text(
          "S I G N  U P",
          style: TextStyle(color: Colors.redAccent),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 150,
              width: 150,
              color: Colors.white,
              child: Image(image: AssetImage('assets/gif.gif')),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 5),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.markunread),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 5),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.remove_red_eye),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Home()));
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 80, right: 50, top: 10, bottom: 10),
              child: GestureDetector(
                onTap: () {
                  validation();
                },
                child: Row(
                  children: [
                    Icon(Icons.app_registration),
                    Text('Sign Up'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Login()));
            },
            child: Text(
              'Already have an account? SignIn.',
              textScaleFactor: 1,
            ),
          )
        ],
      ),
    );
  }
}
