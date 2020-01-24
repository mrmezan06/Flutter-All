import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Widget',
      home: Scaffold(
        body: Container(
          child: Text('This is my Container'),
          height: 300,
          width: 300,
          alignment: Alignment.center,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.green
          ),
          transform: Matrix4.rotationZ(0.3),
          /*foregroundDecoration: BoxDecoration(
            color: Colors.deepOrange
          ),*/
        ), 
      ),
//foregroundDecoration hide the content and decoration mainly overlapped them
    );
  }
}
//Container never has two color

