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
  //const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 4;
  int rightDiceNumber = 4;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void result() {
    if ((leftDiceNumber == 6) && (rightDiceNumber == 6)) {
      const snackBar = SnackBar(
        content: Text('Draw a body!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if ((leftDiceNumber == 5) && (rightDiceNumber == 5)) {
      const snackBar = SnackBar(
        content: Text('Draw the Head'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if ((leftDiceNumber == 4) && (rightDiceNumber == 4)) {
      const snackBar = SnackBar(
        content: Text('Draw A leg'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if ((leftDiceNumber == 3) && (rightDiceNumber == 3)) {
      const snackBar = SnackBar(
        content: Text('Draw An eye'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if ((leftDiceNumber == 2) && (rightDiceNumber == 2)) {
      const snackBar = SnackBar(
        content: Text('Draw An antenna'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if ((leftDiceNumber == 1) && (rightDiceNumber == 1)) {
      const snackBar = SnackBar(
        content: Text('Draw The tail'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      const snackBar = SnackBar(
        content: Text('Roll again to draw'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                  result();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                  result();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
