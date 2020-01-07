import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text("Home"),
          ),
        ),
        body: Center(
          child: Container(
            height: 120.0,
            width: 120.0,
            color: Colors.lightGreenAccent,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
