import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage()
    );
  }
}
class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }

}
class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green,
      body: new Stack(
        
      ),
    );
  }

}
