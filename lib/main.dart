import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Row Column',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row & Column'),
        ),
        /*body: Column(
          children: <Widget>[
            Text('This'),
            Text('is'),
            Text('Row'),
          ],
        ),*/
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('I'),
                Text('Am'),
                Text('Column'),
              ],
            ),
            Text('Row'),
          ],
        ),
      ),

    );
  }
}
/*mainAxisAlignment : Just align the whole content of Row or Column*/


