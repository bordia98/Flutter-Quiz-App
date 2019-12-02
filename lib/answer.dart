import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  String _answertext="Answer 1";

  final Function handler;

  Answer(this._answertext,this.handler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),

      child:  RaisedButton(
        child: Text(_answertext),
        color: Colors.blue,
        onPressed: handler,
      ),
    );
  }
}