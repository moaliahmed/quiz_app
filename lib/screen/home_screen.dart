import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/screen/level_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,          
            end: Alignment.bottomCenter,
            colors: [  Color(0xff2a175b),Color(0xff1f1147)]
            )
        ),
        child: Column(
          
          children: [
             SizedBox(
              height: 42,
            ),
            ImageIcon(
              AssetImage('images/idea-icon.png'),
              size: 200,
              color: Color(0xFF3A5A98),
            ),
            Text(
              'Quizzels',
              style: TextStyle(
                  fontSize: 45,
                  color: Color(0xff33d8b3),
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold),
            ),
           SizedBox(
              height: 42,
            ),
            Text(
              "let's Play!",
              style: TextStyle(fontSize: 32, color: Colors.white,fontWeight: FontWeight.bold),
            ),
            Text(
              "Play now and Level up",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 82,
            ),
           
           
             Padding(
               padding: const EdgeInsets.all(22.0),
               child: GestureDetector(
                onTap: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context){ return LevelPage();} ));
                }),
                 child: Container(
                   height: 70,
                  decoration: BoxDecoration( color: Color(0xff6a49fe),
                  borderRadius: BorderRadius.circular(18)),
                   child: Center(
                     child: Text(
                       'Play Now',
                       style: TextStyle(fontSize: 32,color: Colors.white),
                     ),
                   ),
                 ),
               ),
             ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Container(
                height: 70,
               decoration: BoxDecoration( border:  Border.all(color: Color(0xff6a49fe),width: 2), 
               borderRadius: BorderRadius.circular(18)),
                child: Center(
                  child: Text(
                    'About',
                    style: TextStyle(fontSize: 26,color: Color(0xff6a49fe)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
