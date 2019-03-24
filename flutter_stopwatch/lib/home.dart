import 'package:flutter/material.dart';
import 'dart:async';

class HomeWidget extends StatefulWidget {
  @override
  HomeWidgetState createState() => new HomeWidgetState();
}

class HomeWidgetState extends State<HomeWidget> {
  String buttonText = "Start";
  String stopwatchText = "00:00:00";

  final stopwatch = new Stopwatch();
  final timeout = new Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stopwatch")
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: startStopButtonPressed,
                child: Text(buttonText),
              ),
              RaisedButton(
                onPressed: resetButtonPressed,
                child: Text("Reset"),
              ),
            ],
          ),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.none,
            child: Text(stopwatchText,
            style: TextStyle(
              fontSize: 72
            ),),
          ),
        )
      ],
    );
  }

  void startStopButtonPressed() {
    setState(() {
      if(stopwatch.isRunning) {
        buttonText = "Start";
        stopwatch.stop();
      } else {
        buttonText = "Stop";
        stopwatch.start();
        startTimeOut();
      }
    });
  }

  void startTimeOut() {
    new Timer(timeout, handleTimeOut);
  }

  void handleTimeOut() {
    if(stopwatch.isRunning) {
      startTimeOut();
    }

    setState(() {
      setStopwatchText();
    });
  }

  void resetButtonPressed() {
      if(stopwatch.isRunning) {
        startStopButtonPressed();
      }

      setState(() {
        stopwatch.reset();
        setStopwatchText();
      });
  }

  void setStopwatchText() {
    double seconds = stopwatch.elapsedMicroseconds / 1000 % 60;
    stopwatchText = seconds.toString();
  }
}