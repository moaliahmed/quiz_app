import 'package:flutter/material.dart';

class Levels extends StatelessWidget {
   Levels({required this.num,});
  String num ;
 
  @override
  Widget build(BuildContext context) {
    return 
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 18),
         child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('images/octagon1.png',height: 120),
             Column(mainAxisAlignment: MainAxisAlignment.center,children: [
              Text('Level',style: TextStyle(fontSize: 32,color: Colors.white),),
              Text(num,style: TextStyle(fontSize: 32,color: Colors.white),)
            ],)
          ],
         ),
       )
    ;
  }
}