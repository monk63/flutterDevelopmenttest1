import 'package:flutter/material.dart';
import 'package:test4/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answers() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
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
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('benz'),
              onPressed: _answers,
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
