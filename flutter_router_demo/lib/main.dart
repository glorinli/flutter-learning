import 'package:flutter/material.dart';
import 'firstpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Router Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FirstPage(),
    );
  }
}
