import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

 class DicePage extends StatefulWidget {
   @override
   _DicePageState createState() => _DicePageState();
 }

 class _DicePageState extends State<DicePage> {
  int leftDiceumber=6;
  int rightDiceNmumber=5;
  void changeDiceFace(){
    setState(() {
      leftDiceumber = Random().nextInt(6)+1;
      rightDiceNmumber = Random().nextInt(6)+1;
    });
  }
   @override Widget build(BuildContext context) {

     return Center(
       child: Row(
         children: <Widget>[
           Expanded(
             child: FlatButton(
               onPressed: () {
                 changeDiceFace();

               },
               child: Image(
                 image: AssetImage('images/dice$leftDiceumber.png'),
               ),
             ),
           ),
           Expanded(
             child: FlatButton(
               onPressed: () {
                 changeDiceFace();
               },
               child: Image(
                 width: 200.0,
                 image: AssetImage('images/dice$rightDiceNmumber.png'),
               ),
             ),
           ),
         ],
       ),
     );
   }
 }
