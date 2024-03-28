import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            'DICE',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Dicepage(),
      ),
    ),
  );
}
class Dicepage extends StatefulWidget {
  //const DicePage({super.key});

  @override
  State<Dicepage> createState() => _DicePageState();
}

class _DicePageState extends State<Dicepage> {
  int leftDiceNumber = 1;
  int rightDiceNumber=1;
  void update (){
    leftDiceNumber=Random().nextInt(6)+1;
    rightDiceNumber=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton
              (
               onPressed:(){
                setState(() {
                  update();
                });
            } ,
              child: Image.asset('assets/images/side_$leftDiceNumber.png'),
            )
          ),
          Expanded(
            child: TextButton (
                onPressed:(){
                  setState(() {
                    update();
                  });
                },
                child: Image.asset('assets/images/side_$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
  }





