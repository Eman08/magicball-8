import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Ask Me Anything"),
        ),
        body: ball(),
      ),
    ),
  );
}

class ball extends StatefulWidget {
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballNo = 1;
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          child: Image.asset('images/ball$ballNo.png'),
          onPressed: () {
            setState(() {
              ballNo = Random().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}
