import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/screen/level1_page.dart';

import '../components/item_level.dart';

class LevelPage extends StatelessWidget {
  const LevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1147),
      appBar: AppBar(
        backgroundColor: Color(0xff1f1147),
        title: Center(
          child: Text(
            'Levels',
            style: TextStyle(color: Color(0xff31cead),fontSize: 26),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return Level1();}));
                },
                child: Levels(
                  num: '1',),
              ),
              
              Levels(
                num: '2', 
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Levels(
                num: '3', 
              ),
              Levels(
                num: '4', 
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Levels(
                num: '5'
              ),
              Levels(
                num: '6'
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Levels(
                num: '7'
              ),
              Levels(
                num: '8'
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Levels(
                num: '9'
              ),
              Levels(
                num: '10'
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Levels(
                num: '11'
              ),
              Levels(
                num: '12'
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Levels(
                num: '1'
              ),
              Levels(
                num: '2'
              )
            ],
          ),
        ]),
      ),
    );
  }
}
