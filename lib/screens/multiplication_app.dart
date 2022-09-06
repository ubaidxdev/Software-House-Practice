import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sabiha/screens/statful_widget.dart';

class MultiplyApp extends StatefulWidget {
  const MultiplyApp({Key? key}) : super(key: key);

  @override
  State<MultiplyApp> createState() => _MultiplyAppState();
}

class _MultiplyAppState extends State<MultiplyApp> {
  var currentQuestionNumber = 1;
  var firstNumber = 0;
  var secondNumber = 0;
  var correctAnswer = 0;
  late Random random;
  TextStyle txtStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,

  );

  void _displayQuestion(){
    firstNumber = random.nextInt(9) + 2;
    secondNumber = random.nextInt(7) + 2;
    correctAnswer = firstNumber + secondNumber;
    setState(() {


    });
  }

  @override
  void initState(){
    super.initState();

    random = Random();
    _displayQuestion(); 
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30 ),),
        border: Border.all(width: 3.0,color: Colors.black,style: BorderStyle.solid)
      ),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      // color: Colors.cyanAccent,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                'Multiplication Practice ',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            Text(
              'Question Number $currentQuestionNumber ',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('$firstNumber ' , style: txtStyle,),
                Text(' X ', style: txtStyle,),
                Text(' $secondNumber ', style: txtStyle,),
                Text(' = ', style: txtStyle,),
                Expanded(child: TextField()) ,

              ],
            )

          ],
        ),
      ),
    );
  }
}
