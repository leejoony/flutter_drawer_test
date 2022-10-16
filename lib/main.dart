// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar Icon Menu'),
        centerTitle: true,
        elevation: 0.0,
        // leading: IconButton(
        //   onPressed: () {
        //     print('menu button is clicked');
        //   },
        //   icon: Icon(Icons.menu),
        // ),
        actions: [
          IconButton(
            onPressed: () {
              print('shopping cart button is clicked');
            },
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              print('search button is clicked');
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/user.png'),
                backgroundColor: Colors.white,
              ),
              // ignore: prefer_const_literals_to_create_immutables
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/king.png'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/king.png'),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountName: Text('Joony Lee'),
              accountEmail: Text('leejoony@gmail.com'),
              onDetailsPressed: () {
                print('arrown has been clicked');
              },
              decoration: BoxDecoration(
                color: Colors.amber[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('HOME'),
              onTap: () {
                print('HOME menu tapped');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.post_add,
                color: Colors.grey[850],
              ),
              title: Text('POST'),
              onTap: () {
                print('Post menu tapped');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.grey[850],
              ),
              title: Text('FRIENDS'),
              onTap: () {
                print('Friends menu tapped');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
