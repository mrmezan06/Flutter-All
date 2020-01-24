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
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: Text('AppBar Widget'),
          centerTitle: true,
          elevation: 30.0,
          titleSpacing: 100,
        )
      ),
    );
  }
}

/*elevation is a shadow property of AppBar*/
/*start --> space in title is achieved by titleSpacing*/