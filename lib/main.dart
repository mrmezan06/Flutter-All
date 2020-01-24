import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic List'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Car'),
              trailing: Icon(Icons.directions_car,color: Colors.deepOrange,size: 32),
            ),
            ListTile(
              title: Text('Bike'),
              trailing: Icon(Icons.directions_bike,color: Colors.deepPurple,size: 32),
            ),
            ListTile(
              title: Text('Train'),
              trailing: Icon(Icons.directions_railway,color: Colors.pinkAccent,size: 32),
            ),
            ListTile(
              title: Text('Boat'),
              trailing: Icon(Icons.directions_boat,color: Colors.blueAccent,size: 32),
            ),
            ListTile(
              title: Text('Bus'),
              trailing: Icon(Icons.directions_bus,color: Colors.greenAccent,size: 32),
            ),
            ListTile(
              title: Text('Car'),
              trailing: Icon(Icons.directions_car,color: Colors.deepOrange,size: 32),
            ),
            ListTile(
              title: Text('Bike'),
              trailing: Icon(Icons.directions_bike,color: Colors.deepPurple,size: 32),
            ),
            ListTile(
              title: Text('Train'),
              trailing: Icon(Icons.directions_railway,color: Colors.pinkAccent,size: 32),
            ),
            ListTile(
              title: Text('Boat'),
              trailing: Icon(Icons.directions_boat,color: Colors.blueAccent,size: 32),
            ),
            ListTile(
              title: Text('Bus'),
              trailing: Icon(Icons.directions_bus,color: Colors.greenAccent,size: 32),
            ),
            ListTile(
              title: Text('Car'),
              trailing: Icon(Icons.directions_car,color: Colors.deepOrange,size: 32),
            ),
            ListTile(
              title: Text('Bike'),
              trailing: Icon(Icons.directions_bike,color: Colors.deepPurple,size: 32),
            ),
            ListTile(
              title: Text('Train'),
              trailing: Icon(Icons.directions_railway,color: Colors.pinkAccent,size: 32),
            ),
            ListTile(
              title: Text('Boat'),
              trailing: Icon(Icons.directions_boat,color: Colors.blueAccent,size: 32),
            ),
            ListTile(
              title: Text('Bus'),
              trailing: Icon(Icons.directions_bus,color: Colors.greenAccent,size: 32),
            ),
            ListTile(
              title: Text('Car'),
              trailing: Icon(Icons.directions_car,color: Colors.deepOrange,size: 32),
            ),
            ListTile(
              title: Text('Bike'),
              trailing: Icon(Icons.directions_bike,color: Colors.deepPurple,size: 32),
            ),
            ListTile(
              title: Text('Train'),
              trailing: Icon(Icons.directions_railway,color: Colors.pinkAccent,size: 32),
            ),
            ListTile(
              title: Text('Boat'),
              trailing: Icon(Icons.directions_boat,color: Colors.blueAccent,size: 32),
            ),
            ListTile(
              title: Text('Bus'),
              trailing: Icon(Icons.directions_bus,color: Colors.greenAccent,size: 32),
            ),
            ListTile(
              title: Text('Car'),
              trailing: Icon(Icons.directions_car,color: Colors.deepOrange,size: 32),
            ),
            ListTile(
              title: Text('Bike'),
              trailing: Icon(Icons.directions_bike,color: Colors.deepPurple,size: 32),
            ),
            ListTile(
              title: Text('Train'),
              trailing: Icon(Icons.directions_railway,color: Colors.pinkAccent,size: 32),
            ),
            ListTile(
              title: Text('Boat'),
              trailing: Icon(Icons.directions_boat,color: Colors.blueAccent,size: 32),
            ),
            ListTile(
              title: Text('Bus'),
              trailing: Icon(Icons.directions_bus,color: Colors.greenAccent,size: 32),
            ),
          ],
        ),
      ),
    );
  }
}


