import 'package:flutter/material.dart';

// type 'st' to get a suggestion template
class Question extends StatelessWidget {
  final String questionText;

  Question(
      this.questionText); // A stateless widget build method is only called when its constructor is called

  @override
  Widget build(BuildContext context) {
    return Container(
      // A container is an invisible widget. It has a margin, border, padding and a child inside of it
      width: double.infinity, // takes the maximum pixels of the device
      margin:
          EdgeInsets.all(10.0), // adding 10 pixel margin around all the corners
      child: Text(
        this.questionText,
        style: TextStyle(
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

//= one widget each file should be the key for better application performance

