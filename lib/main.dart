import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = '';
  @override
  void initState() {
    title = 'Press Me!';
    super.initState();
  }
  // ignore: non_constant_identifier_names
  void method1(){
    setState(() {
      title = 'The text has been changed';
    });
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateful Widget',
      home: Scaffold(
        body: Center(
          child: RaisedButton(onPressed: method1, child: Text(title))
          ),
      ),
    );
  }
}
