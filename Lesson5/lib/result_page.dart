import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  ResultPage(this.correct);
  String correct;

  @override
  _ResultPageState createState() => _ResultPageState(correct);
}

class _ResultPageState extends State<ResultPage> {
  _ResultPageState(this.correct);
  String correct;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "結果",
          style: TextStyle(fontSize: 28),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "4問中${correct}問正解",
          style: TextStyle(fontSize: 28),
        ),
        SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "スタート画面に戻る",
          ),
        ),
      ],
    );
  }
}
