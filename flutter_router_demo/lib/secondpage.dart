import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Second page",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _buildHome(),
    );
  }

  _buildHome() {
    return Scaffold(
      appBar: AppBar(title: Text("Second page")),
      body: Center(
        child: Text("I am second page"),
      ),
    );
  }
}
