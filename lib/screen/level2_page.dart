import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/components/answer.dart';
import 'package:game/components/quiction.dart';
import 'package:game/components/result.dart';
import 'package:game/models/level_2_data.dart';

class level2 extends StatefulWidget {
  const level2({super.key});

  @override
  State<level2> createState() => _level2State();
}

class _level2State extends State<level2> {
  int totalScore = 0;
  int questionIndex = 0;
  int lnght=QuestionLevel2.length;
  void reseltGame() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
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
          child: questionIndex < lnght
              ? Column(
                  children: [
                    Question(
                        question: QuestionLevel2[questionIndex]
                            ['questionText']),
                    ...(QuestionLevel2[questionIndex]['answers']
                            as List<Map<String, Object>>)
                        .map((ans) {
                      return Answer(
                          answer: ans['text'].toString(),
                          funcation: (() => answerQuestion(
                              int.parse(ans['score'].toString()))));
                    }),
                  ],
                )
              : Result(function: reseltGame, totelScore: totalScore,lnght: lnght,)),
    );
  }
}
