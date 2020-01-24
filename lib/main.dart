import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<int> item = new List();
  @override
  void initState() {
    int i = 0;
    while(i<50){
      item.add(i);
      i++;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
            itemCount: item.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (BuildContext context,int index){
              return Card(
                color: Colors.deepOrange,
                child: Padding(padding: EdgeInsets.all(20.0),child: Center(child: Text('$index')),),
              );
            }),
      ),
    );
  }
}
