import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final bool _answer;
  final _onTap;

  AnswerButton(this._answer, this._onTap);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
        //True按钮
        child: new Material(
      color: _answer == true ? Colors.lightGreen : Colors.redAccent,
      //判断正确与否 显示红绿和下面一个效果
//         if (answer == true){
//    return Colors.lightGreen;
//    }else{
//        return Colors.redAccent
//    }
      child: new InkWell(
        onTap: () => _onTap(),
        child: new Center(
          child: new Container(
            //样式
            decoration: new BoxDecoration(
                border: new Border.all(color: Colors.white, width: 5.0)),
            padding: new EdgeInsets.all(20.0),
            child: new Text(
              _answer == true ? 'YES' : 'NO',
              style: new TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    ));
  }
}
