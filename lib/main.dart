import 'dart:ui';
import 'package:bottom_navigation/screens/Category.dart';
import 'package:bottom_navigation/screens/Home.dart';
import 'package:bottom_navigation/screens/Settings.dart';
import 'package:bottom_navigation/screens/Web.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _bottomNavCurrentIndex = 0;
  Widget bottomNavigationCallPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return MyHomePage();
      case 1:
        return CategoryPage();
      case 2:
        return SettingsPage();
      case 3:
        return WebPage();
        break;
      default:
        return MyHomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom NavBar Flutter'),
        actions: <Widget>[
          Container(
            height: 24.0,
            width: 24.0,
            margin: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.amber,
      ),
      body: bottomNavigationCallPage(_bottomNavCurrentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavCurrentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.amber,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.deepOrange),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
              color: Colors.white,
            ),
            title: Text(
              'Category',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.web,
              color: Colors.white,
            ),
            title: Text(
              'Website',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
      ),
    );
  }
}
