import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answers() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite car?',
      'What\'s your favorite sport?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Garage'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('benz'),
              onPressed: answers,
            ),
            RaisedButton(
              child: Text('audi'),
              onPressed: () => print('option 2 selected'),
            ),
            RaisedButton(
              child: Text('bmw'),
              onPressed: () => print('option 2 selected'),
            ),
          ],
        ),
      ),
    );
  }
}
