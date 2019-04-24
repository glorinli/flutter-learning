import 'package:flutter/material.dart';

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
      home: _buildBody(),
    );
  }

  _buttonClicked() {}

  _buildBody() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Router demo"),
      ),
      body: RaisedButton(
        child: Text(
          "I am a text",
          textDirection: TextDirection.ltr,
        ),
        onPressed: _buttonClicked(),
      ),
    );
  }
}
