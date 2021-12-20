import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/result_page.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var _questionIndex = 0;

  var _visible = false;

  var _correctWrongText = "";

  var _correct = 0;

  var _questions = [
    {
      'question': 'いすみ市で有名なのは？',
      'image': "assets/images/number1.png",
      'a': 'イカ',
      'b': 'タコ',
      'correctAnswer': 'b'
    },
    {
      'question': '大原漁港にある漁協直営の食堂の名前は？',
      'image': "assets/images/number2.jpeg",
      'a': 'いさばや',
      'b': 'いちばや',
      'correctAnswer': 'a'
    },
    {
      'question': '大原駅前にあるお菓子屋さんの名前は？',
      'image': "assets/images/number3.jpeg",
      'a': '昭和堂',
      'b': '大正堂',
      'correctAnswer': 'a'
    },
    {
      'question': 'いすみ市観光センターでの普通自転車のレンタサイクル一日いくら？',
      'image': "assets/images/number4.png",
      'a': '500',
      'b': '100',
      'correctAnswer': 'b'
    }
  ];

  void _answerQuestion(String choice) {
    setState(() {
      _visible = true;
      if (choice == _questions[_questionIndex]["correctAnswer"]) {
        _correctWrongText = "正解";
        _correct++;
      } else {
        _correctWrongText = "不正解";
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _visible = false;
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("いすみっこクイズ"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: _questionIndex < _questions.length
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "第${_questionIndex + 1}問",
                      style: TextStyle(fontSize: 28),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "${_questions[_questionIndex]["question"]}",
                      style: TextStyle(fontSize: 28),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Image.asset(
                      "${_questions[_questionIndex]["image"]}",
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      ElevatedButton(
                        onPressed: () {
                          _answerQuestion("a");
                        },
                        child: Text(
                          "${_questions[_questionIndex]["a"]}",
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _answerQuestion("b");
                        },
                        child: Text(
                          "${_questions[_questionIndex]["b"]}",
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 30.0,
                    ),
                    Visibility(
                        visible: _visible,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _correctWrongText,
                                style: TextStyle(fontSize: 28),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  _nextQuestion();
                                },
                                child: Text(
                                  "次へ",
                                ),
                              ),
                            ]))
                  ],
                )
              : ResultPage(_correct.toString()),
        ),
      ),
    );
  }
}
