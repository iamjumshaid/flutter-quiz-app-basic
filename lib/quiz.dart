import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  // required tells that these arguments are needed
  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // Column is a type of invisible widget, you can add vertical items as its children (more widgets)
        children: [
          Question(questions[questionIndex]['questionText']),
          // RaisedButton(
          // passed the Stateless widget here
          //   // Raised button is deprecated in flutter 2. There are more buttons e.g. elevated button etc
          //   onPressed: _answerQuestion,
          //   child: Text('Good'),
          // ),
          // RaisedButton(
          //   // button can have futher child as image test etc.
          //   onPressed: _answerQuestion,
          //   child: Text('Bad'),
          // ),
          // RaisedButton(
          //   onPressed:
          //       _answerQuestion, // we don't add functional brackets on it. Because function pointer is needed not the call
          //   child: Text('Worse'),
          // ),
          // passing callback function reference to the widget,

          //= ... is a spread operater of dart (plucks each item from list and inserts one by one)
          ...(questions[questionIndex]['answers'] as List).map((answer) {
            return Answer(answerQuestion, answer);
          }).toList(),
          //= The above code results in following
          /*
              Answer(_answerQuestion, 'answer1'),
              Answer(_answerQuestion, 'answer1'),
              .....
              Answer(_answerQuestion, 'answer1'),
              */
        ],
      ),
    );
  }
}
