import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  
  var questions;
  int questionindex;
  Function _AnswerChosen;
  
  Quiz(this.questions,this.questionindex,this._AnswerChosen);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(
            questions[questionindex]['questiontext']
          ),

          ...(questions[questionindex]['answertext'] as List<Map>).map( (ans) {
            return Answer(ans["text"], () => _AnswerChosen(ans['score']));
          }).toList()
        ],
      )
    );
  }
}