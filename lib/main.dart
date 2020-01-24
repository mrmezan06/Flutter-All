import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> mList = new List();
  @override
  void initState() {
    int i=0;
    while(i<50){
      mList.add(i);
      i++;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Array List View',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Array ListView'),
          ),
          body: ListView.builder(
              itemCount: mList.length,
              itemBuilder: (BuildContext context,int index){
                return ListTile(
                  title: Text('Index : $index at Value --> '),
                  trailing: Text(mList.elementAt(index).toString()),
                );
              }),
        )
    );
  }
}

