import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/components/result.dart';
import 'package:game/models/level_1_data.dart';

import '../components/answer.dart';
import '../components/quiction.dart';

class Level1 extends StatefulWidget {
  const Level1({super.key});

  @override
  State<Level1> createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  int questionIndex =0;

  void answerQuestion (){
   
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xff1f1147),
      appBar: AppBar(
        backgroundColor: Color(0xff1f1147),
        title: Center(
          child: Text(
            'Level 1',
            style: TextStyle(color: Color(0xff31cead), fontSize: 26),
          ),
        ),
      ),
      body: Container(
          child: questionIndex<QuestionLevel1.length? Column(
        children: [
          Question(question: QuestionLevel1[questionIndex]['questionText'].toString()),
          ...(QuestionLevel1[questionIndex]['answers']as List<String>).map( (ans) {
            return Answer(answer: ans, funcation: answerQuestion);
          }).toList(),
           ],
      )
      :Result()
      ),
    );
  }
}

// List<Question> sample_data =[
// Question(id: 1, quiction: '1+2', answer: 2, options: ['1','3','8','9']),
// Question(id: 2, quiction: '1+2', answer: 2, options: ['1','3','8','9']),
// Question(id: 3, quiction: '1+2', answer: 2, options: ['1','3','8','9']),
// Question(id: 4, quiction: '1+2', answer: 2, options: ['1','3','8','9']),
// Question(id: 5, quiction: '1+2', answer: 2, options: ['1','3','8','9']),

// ];

