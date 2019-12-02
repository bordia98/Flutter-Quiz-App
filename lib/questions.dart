import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  
  String questiontext;

  Question(String questiontext){
    this.questiontext = questiontext;
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),

      child: Text(
        questiontext,
        style: TextStyle(
          fontSize: 35
          ), 
        textAlign: TextAlign.center,
        )
    );
   }
}