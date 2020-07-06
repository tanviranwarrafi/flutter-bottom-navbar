import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebPage extends StatefulWidget {
  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.web,
              size: 80,
              color: Colors.amber,
            ),
            Text(
              'Web Page',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
