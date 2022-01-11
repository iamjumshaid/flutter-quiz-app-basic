import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onClickHandler; // accepting a callback function
  final String answerText;

  Answer(this.onClickHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      //margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      child: RaisedButton(
        onPressed: this.onClickHandler,
        child: Text(
          this.answerText,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
