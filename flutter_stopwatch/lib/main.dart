import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(StopwatchApp());

class StopwatchApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stopwatch',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeWidget(),
    );
  }
}
