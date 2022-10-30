import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class Question extends StatelessWidget {

  final String question;
  Question({required this.question});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Container(
        width: double.infinity,
        child: Text( question ,style: TextStyle(fontSize: 42,color: Color.fromARGB(249, 34, 231, 156)),textAlign: TextAlign.center,) ,
      ),
    );
  }
}
