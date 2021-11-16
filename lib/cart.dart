// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hakathon/home.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
              'My Carts',
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
