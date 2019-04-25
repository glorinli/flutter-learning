import 'package:flutter/material.dart';
import 'secondpage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }

  _buttonClicked(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new SecondPage()));
  }

  _buildBody(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Router demo"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            "Goto second page",
            textDirection: TextDirection.ltr,
          ),
          onPressed: _buttonClicked(context),
        ),
      ),
    );
  }
}