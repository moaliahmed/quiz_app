



import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({required this.answer,required this.funcation} );

final String answer;
final  Function() funcation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
         width: double.infinity,       
        child: ElevatedButton(
              
              onPressed: funcation,
              child: Text(
                answer,
                style: TextStyle(fontSize: 32),
              ),
            ),
      ),
    );
  }
}
