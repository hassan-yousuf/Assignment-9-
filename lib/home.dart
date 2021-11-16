// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hakathon/BJ.dart';
import 'package:hakathon/about.dart';
import 'package:hakathon/cart.dart';
import 'package:hakathon/check.dart';
import 'package:hakathon/favo.dart';
import 'package:hakathon/jeans.dart';
import 'package:hakathon/jog.dart';
import 'package:hakathon/login.dart';
import 'package:hakathon/profile.dart';
import 'package:hakathon/search.dart';
import 'package:hakathon/shirt.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var lst = 0;

  counter() {
    setState(() {
      lst++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.orange),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Search()));
                },
                child: Icon(Icons.search)),
            label: 'Search',
            backgroundColor: Colors.orange),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Prfile()));
                },
                child: Icon(Icons.person)),
            label: 'Profile',
            backgroundColor: Colors.orange)
      ]),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.red),
          backgroundColor: Colors.white,
          title: Text(
            'M A R K E T',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Favo()));
              },
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Cart()));
              },
              child: Icon(
                Icons.shopping_cart,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, bottom: 5),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 7,
                child: Text(
                  '$lst',
                  style: TextStyle(color: Colors.black),
                  textScaleFactor: 0.7,
                ),
              ),
            )
          ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 220,
                color: Colors.white70,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(image: AssetImage('assets/UI.jpg')),
                      title: Text(
                        'Shoes',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        '34 Pieces left',
                        textScaleFactor: 1,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Container(
                height: 80,
                width: 220,
                color: Colors.white70,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(image: AssetImage('assets/US.jpg')),
                      title: Text(
                        'Suits',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        '11 Pieces left',
                        textScaleFactor: 1,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Container(
                height: 80,
                width: 220,
                color: Colors.white70,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(image: AssetImage('assets/ii.jpg')),
                      title: Text(
                        'Shirts',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        '32 Pieces left',
                        textScaleFactor: 1,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Container(
                height: 80,
                width: 220,
                color: Colors.white70,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(image: AssetImage('assets/gg.jpg')),
                      title: Text(
                        'T-Shirts',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        '7 Pieces left',
                        textScaleFactor: 1,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Container(
                height: 80,
                width: 220,
                color: Colors.white70,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(image: AssetImage('assets/rt.jpg')),
                      title: Text(
                        'Joggers',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        'Last Piece left',
                        textScaleFactor: 1,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Container(
                height: 80,
                width: 220,
                color: Colors.white70,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(image: AssetImage('assets/hj.jpg')),
                      title: Text(
                        'Jeans',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        '20 Pieces left',
                        textScaleFactor: 1,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Container(
                height: 80,
                width: 220,
                color: Colors.white70,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(image: AssetImage('assets/bv.jpg')),
                      title: Text(
                        'Track Suits',
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        '17 Pieces left',
                        textScaleFactor: 1,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 7,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Shirt()));
                },
                child: Column(
                  children: [
                    Center(
                      child: Stack(children: [
                        Container(
                          height: 200,
                          width: 250,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              ListTile(
                                leading: GestureDetector(
                                    onTap: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: Text(
                                                'Added To Favorites',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )));
                                    },
                                    onDoubleTap: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: Text(
                                                'Item Already Exist In Favorites',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )));
                                    },
                                    child:
                                        Icon(Icons.favorite_border_outlined)),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                color: Colors.white70,
                                child: Center(
                                  child: Image(
                                    image: AssetImage('assets/lp.jpg'),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'White T-Shirt',
                                      textScaleFactor: 1,
                                    ),
                                    trailing: Column(
                                      children: [
                                        Text('90-/'),
                                        GestureDetector(
                                          onTap: () {
                                            counter();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    content: Text(
                                                      'Added To Cart',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    )));
                                          },
                                          child: Icon(
                                            Icons.shopping_cart_outlined,
                                            color: Colors.black,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -1,
                          top: -1,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('40% off'),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)))),
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Jeans()));
                },
                child: Column(
                  children: [
                    Center(
                      child: Stack(children: [
                        Container(
                          height: 200,
                          width: 250,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              ListTile(
                                leading: GestureDetector(
                                    onTap: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: Text(
                                                'Added To Favorites',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )));
                                    },
                                    onDoubleTap: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: Text(
                                                'Item Already Exist In Favorites',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )));
                                    },
                                    child:
                                        Icon(Icons.favorite_border_outlined)),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                color: Colors.white70,
                                child: Center(
                                  child: Image(
                                    image: AssetImage('assets/po.jpg'),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Black Jeans',
                                      textScaleFactor: 1,
                                    ),
                                    trailing: Column(
                                      children: [
                                        Text('150-/'),
                                        GestureDetector(
                                          onTap: () {
                                            counter();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    content: Text(
                                                      'Added To Cart',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    )));
                                          },
                                          child: Icon(
                                            Icons.shopping_cart_outlined,
                                            color: Colors.black,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 7,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -1,
                          top: -1,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('28% off'),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)))),
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Check()));
                },
                child: Column(
                  children: [
                    Center(
                      child: Stack(children: [
                        Container(
                          height: 200,
                          width: 250,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              ListTile(
                                leading: GestureDetector(
                                    onTap: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: Text(
                                                'Added To Favorites',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )));
                                    },
                                    onDoubleTap: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: Text(
                                                'Item Already Exist In Favorites',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )));
                                    },
                                    child:
                                        Icon(Icons.favorite_border_outlined)),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                color: Colors.white70,
                                child: Center(
                                  child: Image(
                                    image: AssetImage('assets/check.jpg'),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Checkers Shirt',
                                      textScaleFactor: 1,
                                    ),
                                    trailing: Column(
                                      children: [
                                        Text('199-/'),
                                        GestureDetector(
                                          onTap: () {
                                            counter();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    content: Text(
                                                      'Added To Cart',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    )));
                                          },
                                          child: Icon(
                                            Icons.shopping_cart_outlined,
                                            color: Colors.black,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 7,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -1,
                          top: -1,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('62% off'),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)))),
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Jog()));
                },
                child: Column(
                  children: [
                    Center(
                      child: Stack(children: [
                        Container(
                          height: 200,
                          width: 250,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              ListTile(
                                leading: GestureDetector(
                                    onTap: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: Text(
                                                'Added To Favorites',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )));
                                    },
                                    onDoubleTap: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: Text(
                                                'Item Already Exist In Favorites',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )));
                                    },
                                    child:
                                        Icon(Icons.favorite_border_outlined)),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                color: Colors.white70,
                                child: Center(
                                  child: Image(
                                    image: AssetImage('assets/shoe.jpg'),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Joggers',
                                      textScaleFactor: 1,
                                    ),
                                    trailing: Column(
                                      children: [
                                        Text('120-/'),
                                        GestureDetector(
                                          onTap: () {
                                            counter();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    content: Text(
                                                      'Added To Cart',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    )));
                                          },
                                          child: Icon(
                                            Icons.shopping_cart_outlined,
                                            color: Colors.black,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 7,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -1,
                          top: -1,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('10% off'),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)))),
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => BJ()));
                },
                child: Column(
                  children: [
                    Center(
                      child: Stack(children: [
                        Container(
                          height: 200,
                          width: 250,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              ListTile(
                                leading: GestureDetector(
                                    onTap: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: Text(
                                                'Added To Favorites',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )));
                                    },
                                    onDoubleTap: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: Text(
                                                'Item Already Exist In Favorites',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )));
                                    },
                                    child:
                                        Icon(Icons.favorite_border_outlined)),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                color: Colors.white70,
                                child: Center(
                                  child: Image(
                                    image: AssetImage('assets/kl.jpg'),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Blue Jeans',
                                      textScaleFactor: 1,
                                    ),
                                    trailing: Column(
                                      children: [
                                        Text('380-/'),
                                        GestureDetector(
                                          onTap: () {
                                            counter();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    content: Text(
                                                      'Added To Cart',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    )));
                                          },
                                          child: Icon(
                                            Icons.shopping_cart_outlined,
                                            color: Colors.black,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: -1,
                          top: -1,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('76% off'),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)))),
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 4,
              ),
            ],
          ),
        ),
      ),
      drawer: Container(
        width: 260,
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.png'),
                    ),
                    title: Text('Hassan Yousuf'),
                    subtitle: Text('mughal@gmail.com'),
                  ),
                ),
              ])),
              Column(
                children: [
                  ListTile(
                    title: Text("Log Out"),
                    leading: Icon(
                      Icons.logout,
                      color: Colors.blue,
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Login()));
                    },
                  ),
                ],
              ),
              ListTile(
                title: Text(" Your Carts"),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.yellow,
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Cart()));
                },
              ),
              ListTile(
                title: Text("Your Favorites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Favo()));
                },
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.info,
                  color: Colors.grey,
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => About()));
                },
              ),
              ListTile(
                title: Text("Close"),
                leading: Icon(Icons.close),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
