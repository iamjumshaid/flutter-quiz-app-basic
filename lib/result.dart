import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final actualAnswers;
  final Function restartQuiz;
  Result(this.actualAnswers, this.restartQuiz);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Quiz Results',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ...(actualAnswers as List).map((answer) {
            return Container(
              padding: const EdgeInsets.all(3.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),
              margin: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  // Flexible widget helps to wrap the text that goes out of pixels on screen
                  Flexible(
                    child: Text(
                      answer['questionText'] as String,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Text(answer['correctAnswer'] as String,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                ],
              ),
            );
          }).toList(),
          FlatButton(
            onPressed: restartQuiz,
            child: Text('Restart Quiz!'),
            color: Colors.blue,
          )
        ],
      ),
      alignment: Alignment.center,
    );
  }
}
