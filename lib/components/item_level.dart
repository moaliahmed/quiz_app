import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Levels extends StatelessWidget {
   Levels({required this.num,});
  String num ;
 
  @override
  Widget build(BuildContext context) {
    return 
       Padding(
         padding: const EdgeInsets.all(16.0),
         child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration( color: Colors.red,borderRadius: BorderRadius.circular(999)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
            Text('Level',style: TextStyle(fontSize: 32,color: Colors.white),),
            Text(num,style: TextStyle(fontSize: 32,color: Colors.white),)
          ],),
             ),
       )
    ;
  }
}