import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title:Text('Tab Bar'),
          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home,color: Colors.deepOrange,),),
              Tab(icon: Icon(Icons.supervisor_account,color: Colors.lightGreenAccent,),),
              Tab(icon: Icon(Icons.close,color: Colors.pink,),),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(child: Text('Home'),),
            Center(child: Text('Account'),),
            Center(child: Text('Exit'),),
          ],
        ),
        bottomNavigationBar: Material(
          color: Colors.blueAccent,
          child: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home,color: Colors.deepOrange,),),
              Tab(icon: Icon(Icons.supervisor_account,color: Colors.lightGreenAccent,),),
              Tab(icon: Icon(Icons.close,color: Colors.pink,),),
            ],
          ),
        ),
      ),
    );
  }
}
