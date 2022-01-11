import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
// Material dart package holds all the material UI built widgets

// only we can import if the class is not private(_)

// void main() {
//   // runs the applications
//   // draws the widget tree on the screen
//   runApp(MyApp()); // written by flutter in material.dart file
//   // pass in runApp the widget you want to draw
//   // run App will call the build method automatically
// }

// shorthand for functions
void main() => runApp(MyApp());

// stateless widget is a class in material package
// The initial page is rendered by the below class
// controlling pixel/pixel stuff

/* example concerning the stateless widget

class MyApp extends StatelessWidget {

  void answerQuestion() {
    print('Whoa! i am clicked');
    questionIndex++;
  }

  var questions = [
    'Hello darkness?',
    'My old friend?',
    'I have come to talk with you again?',
  ];

  var questionIndex = 0;

  // the methods returns the kind of widget we want in our app

  // the build method is caled auto by flutter
  // it will build the pixels on the screen for the widget
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // Scaffold widget builds the basic page design for your flutter app
          appBar: AppBar(
            title: Text(
              questions[questionIndex], //trying to change a stateless widget on runtime
            ),
          ),
          body: Column(
            // Column is a type of invisible widget, you can add vertical items as its children (more widgets)
            children: [
              Text('How is your mood?'),
              RaisedButton(
                // Raised button is deprecated in flutter 2. There are more buttons e.g. elevated button etc
                onPressed: answerQuestion,
                child: Text('Good'),
              ),
              RaisedButton(
                // button can have futher child as image test etc.
                onPressed: answerQuestion,
                child: Text('Bad'),
              ),
              RaisedButton(
                onPressed:
                    answerQuestion, // we don't add functional brackets on it. Because function pointer is needed not the call
                child: Text('Worse'),
              ),
            ],
          )),
    );
    // a Widget is returned.
  }
}
/* Flutter always needs a StateLess or StateFul widget, which has its build methods */

// The above structure is Widget inside a Widget
*/

/* now for a stateful widget, we need to do two things. widget class */

// 1. Widget class
class MyApp extends StatefulWidget {
  // this is the widget class that implements the create

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// 2. State class for the Widget

class _MyAppState extends State<MyApp> {
  // _ makes it a private class
  // State is a generic class and requires the pointer for Widget

  void _answerQuestion() {
    setState(() {
      // method to change the state of Widget provided  by State class
      _questionIndex++;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  // making list of map(dictionary) consiting question and answers

  final _questions = [
    {
      'questionText': '1. Who is the CEO of SoftAims?',
      'answers': ['Jumshaid Khan', 'Muhammad Umar'],
      'correctAnswer': 'Muhammad Umar',
    },
    {
      'questionText': '2. HR ho to?',
      'answers': ['Sohail Bhai jasa', 'Warna na ho'],
      'correctAnswer': 'Sohail Bhai jasa',
    },
    {
      'questionText': '3. Dabbay ma dabba dabbay ma cake, ______ Lakho ma aik?',
      'answers': ['Huzaifa bhai', 'none other'],
      'correctAnswer': 'Huzaifa bhai',
    },
    {
      'questionText': '4. Marde momim marde haq.',
      'answers': ['Chacha gaddi chikh k rakh', 'Asman se gira khajoor ma atka'],
      'correctAnswer': 'Chacha gaddi chikh k rakh',
    },
  ];

  // var _questions = [
  //   'Hello darkness?',
  //   'My old friend?',
  //   'I have come to talk with you again?',
  // ];

  var _questionIndex = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // Scaffold widget builds the basic page design for your flutter app
      appBar: AppBar(
        title: Text(
            'SoftAims Quiz' //trying to change a stateless widget on runtime
            ),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questionIndex: _questionIndex,
              questions: _questions,
              answerQuestion: _answerQuestion,
            )
          : Result(_questions, _restartQuiz),
    ));
    // a Widget is returned.
  }
}
