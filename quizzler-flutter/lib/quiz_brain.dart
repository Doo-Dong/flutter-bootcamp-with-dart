import 'question.dart';

class quizBrain {
  int _quizIndex = 0;

  List<Question> _quiz = [
    /*
    Question(q: '진주는 세상에서 제일 예쁘다', a: true),
    Question(q: '진주는 호러 영화를 좋아한다', a: false),
    Question(q: '진주는 먹는 모습이 아이유같다', a: true),
    Question(q: '진주는 성격이 나쁘다', a: false),
    Question(q: '진주는 보라색을 좋아한다', a: true),
    Question(q: '진주는 야한게 좋다', a: true),
    Question(q: '진주는 동근이가 보구싶당', a: true),
    */
    Question(q: '다트의 리스트 구조에서 자료형의 디폴트 값은 스태틱이다', a: false),
    Question(q: 'TODO 키워드의 주석은 안드로이드 스튜디오의 TODO 탭을 더블클릭해서 자유롭게 이동할 수 있다', a: true),
    Question(q: '다트의 리스트 구조는 Base 1 이다.', a: false),
  ];

  String getQuiz() {
    return _quiz[_quizIndex].q;
  }

  bool getAnswer() {
    return _quiz[_quizIndex].a;
  }

  int getQuizIndex() {
    return _quizIndex;
  }

  void setQuizIndex(int n) {
    _quizIndex = n;
  }

  int getQuizLastNum() {
    return _quiz.length - 1;
  }

  void nextQuiz() {
    if(_quizIndex < (_quiz.length - 1) ) {
      _quizIndex++;
    }
  }
}