import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/models/level_1_data.dart';
import 'package:game/screen/level1_page.dart';

class Quiction extends StatelessWidget {
  const Quiction({required this.Q});
final Question Q ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Q.quiction),
        Row(
          children: [
            Container(
              height: 22,
              width: 22,
              color: Color(0xff8d6ffd),
              child: Text('01'),
            ),
            Text(Q.options[0]),
          ],
        ),
        Row(
          children: [
            Container(
              height: 22,
              width: 22,
              color: Color(0xff8d6ffd),
              child: Text('02'),
            ),
            Text(Q.options[1]),
          ],
        ),
        Row(
          children: [
            Container(
              height: 22,
              width: 22,
              color: Color(0xff8d6ffd),
              child: Text('03'),
            ),
            Text(Q.options[2]),
          ],
        ),
        Row(
          children: [
            Container(
              height: 22,
              width: 22,
              color: Color(0xff8d6ffd),
              child: Text('04'),
            ),
            Text(Q.options[3]),
          ],
        ),
      ],
    );
  }
}
