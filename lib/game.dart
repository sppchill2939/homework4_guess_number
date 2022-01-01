import 'dart:math';

class Game {
  static int maxRandom = 0;
  int? _answer;
  int _guessCount = 0;

  Game({int max = 100}) {
    var r = Random();
    maxRandom = max;
    _answer = r.nextInt(max) + 1;
  }

  int get guessCount {
    return _guessCount;
  }

  int doGuess(int num) {
    _guessCount++;
    if (num > _answer!) {
      return 1;
    } else if (num < _answer!) {
      return -1;
    } else {
      return 0;
    }
  }
}
