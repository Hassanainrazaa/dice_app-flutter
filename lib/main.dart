import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dice App"),
        backgroundColor: Colors.red,
      ),
      body: Dicepage(),
    ),
    )
  );
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int LeftDice = 1;
  int RightDice = 1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(

        children: <Widget>[
          Expanded(

            child: FlatButton(
                onPressed: () {
                  setState(() {
                    LeftDice = Random().nextInt(6) + 1;
                    RightDice = Random().nextInt(6) + 1;
                    print("Dice update to $LeftDice");
                  });


                  //print("Left button pressed");
                },
                child: Image.asset('images/dice$LeftDice.png')) ,
          ),


          Expanded(
            child:
            FlatButton(
                onPressed: () {
                  setState(() {
                    RightDice = Random().nextInt(6) + 1;
                    LeftDice = Random().nextInt(6) + 1;
                    print("Dice update to $RightDice");
                  });
                },
                child: Image.asset('images/dice$RightDice.png')),

          ),
        ],
      ),
    );
  }
}


