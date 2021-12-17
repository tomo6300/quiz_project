import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("クイズだよ〜"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.0,
            ),
            Text(
              "第1問",
              style: TextStyle(fontSize: 28),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "いすみ市で有名なのは？",
              style: TextStyle(fontSize: 28),
            ),
            SizedBox(
              height: 30.0,
            ),
            Image.asset(
              "assets/images/number1.png",
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "イカ",
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "タコ",
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
