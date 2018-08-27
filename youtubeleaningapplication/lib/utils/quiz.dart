import './question.dart';

class Quiz {
  List<Question> _question;
  int _currentQuestionIndex = -1;
  int _score = 0; //赋初始值

  Quiz(this._question) {
    _question.shuffle();
  }

  List<Question> get question => _question;

  int get length => _question.length; //问题总数

  int get questionNumber => _currentQuestionIndex + 1; //第几题

  int get score => _score; //得分

  Question get nextQuestion {
    _currentQuestionIndex++;
    if (_currentQuestionIndex >= length) return null;
    return _question[_currentQuestionIndex];
  } // 获取下一个问题

  void answer(bool isCorrect) {
    if (isCorrect) _score++;
  } //得分计算
}
