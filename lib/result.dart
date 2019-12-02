import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  var _score ;
  Function reset;
  Result(this._score,this.reset);


  String get output {
    String res = "";

    if (_score <= 60){
      res = "You are Strange";
    }else if (_score >=90){
      res = "You are like me";
    }else{
      res = "You are normal person";
    }
    return res;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(30),
      child : Column(
        children: <Widget>[
          Text(output, 
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
          ),
          Text("", 
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
          ),
          Text("", 
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            child: Text("Restart Game", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
            padding: EdgeInsets.all(20),
            onPressed: reset,)
        ]
      ),
          
    );
  }
}