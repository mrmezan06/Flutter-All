import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String data = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyAppBar'),
          leading: Icon(Icons.menu),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.arrow_forward),onPressed: (){ setState(() {
              data = 'Forward Button Pressed!';
            });},),
            IconButton(icon: Icon(Icons.close),onPressed: (){setState(() {
              data = 'Close Button Pressed!';
            });},),
          ],
        ),
        body: Center(
          child: Text('$data'),
        ),
      ),
    );
  }
}

