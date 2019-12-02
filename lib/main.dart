import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  var questionindex = 0;
  int totalscore = 0;

  var questions = [ 
      {
        "questiontext" :" What is your favourite color ?",
        "answertext" : [
           {"text": "Red", "score":20},
           {"text": "Black", "score":30},
           {"text": "Green", "score":25},
           {"text": "Orange", "score":15}
           ]
      },
      {
        "questiontext" :" What is your favourite food ?",
        "answertext" : [
           {"text": "Pizza", "score":20},
           {"text": "Burger", "score":30},
           {"text": "Ghar ka khana", "score":25},
           {"text": "Drinks", "score":15}
           ]
      },
      {
        "questiontext" :" Who is your favourite person?",
        "answertext" : [
           {"text": "Me", "score":20},
           {"text": "Myself", "score":30},
           {"text": "I", "score":25},
           {"text": "We", "score":15}
           ]
      },
      {
        "questiontext" :" Who is your favourite pet?",
        "answertext" : [
           {"text": "Dog", "score":20},
           {"text": "My Best Friend", "score":30},
           {"text": "Parrot", "score":25},
           {"text": "Cat", "score":15}
           ]
      },
    ];

  void _AnswerChosen(int score){
    setState(() {
      questionindex = (questionindex + 1);
      totalscore += score;
      print(totalscore);
    });
    print("This is the answer");
  }

  void reset(){
    setState(() {
      totalscore = 0;
      questionindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("Small Quiz App"),
        backgroundColor: Color.fromRGBO(55, 33, 89, 1),
      ),
    
      body: questionindex < questions.length ? 
          Quiz(questions, questionindex, _AnswerChosen)
          : Result(totalscore,reset)
    ),
    );
  }

}