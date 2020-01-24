import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Card(color: Colors.pinkAccent,child: Padding(padding: EdgeInsets.all(200.0),),),
              Card(color: Colors.blueAccent,child: Padding(padding: EdgeInsets.all(100.0),),),
              Card(color: Colors.greenAccent,child: Padding(padding: EdgeInsets.all(50.0),),),
              Card(color: Colors.redAccent,child: Padding(padding: EdgeInsets.all(30.0),),),
              Card(color: Colors.lightGreenAccent,child: Padding(padding: EdgeInsets.all(10.0),),),
            ],
          ),
        ),
      ),
    );
  }
}
