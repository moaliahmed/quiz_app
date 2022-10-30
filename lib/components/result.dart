
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int  lnght;
  final int totelScore ;
  final Function() function;
  Result({required this.function,required this.totelScore,required this.lnght});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('${totelScore} / $lnght',style: TextStyle(fontSize: 32,color: Colors.white),),
          TextButton(onPressed: function, child: Text('Restart Game',style: TextStyle(fontSize: 32,),))
        ],
      ),

    );
  }
}