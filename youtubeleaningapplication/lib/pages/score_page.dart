import 'package:flutter/material.dart';

import './landing_page.dart';

class ScorePage extends StatelessWidget{

  final int score;
  final int totalQuestion;

  ScorePage(this.score, this.totalQuestion);



  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.lightBlueAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('你的得分: ',style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50.0 ),),
          new Text(score.toString() + '/' +totalQuestion.toString(), style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50.0 ),),
          new Text('点击重新开始',style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),),
          new IconButton(
            icon: new Icon(Icons.arrow_right),
              color: Colors.white,
              iconSize: 50.0,
              onPressed:() => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new LandingPage()), (Route route) => route == null),
          )
        ],
      )
    );
  }
}