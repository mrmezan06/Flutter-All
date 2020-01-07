import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text("Home"),
          ),
        ),
        body: SafeArea(
          child: Container(
            height: 100,
            width: 100,
          margin: EdgeInsets.only(left: 40,top: 50,right: 10,bottom: 0),
          alignment: Alignment.center,
          color: Colors.white,
            child: Text("Hello Baby"),
          )
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
