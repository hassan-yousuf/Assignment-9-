// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hakathon/home.dart';
import 'package:hakathon/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
        backgroundColor: Colors.white,
        title: Text(
          "L O G I N",
          style: TextStyle(color: Colors.redAccent),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 200,
              width: 200,
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
                const EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
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
          Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 50, top: 10, bottom: 10),
            child: GestureDetector(
              onTap: () {
                validation();
              },
              child: Row(
                children: [
                  Icon(Icons.login),
                  Text('Login'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SignUp()));
            },
            child: Text(
              'Not have an account?SignUp.',
              textScaleFactor: 1,
            ),
          )
        ],
      ),
    );
  }
}
