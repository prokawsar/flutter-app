import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: const DicePageSt(),
        // body: Center(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Expanded(
        //         child: TextButton(
        //           onPressed: () {
        //             print("Left button pressed");
        //           },
        //           child: Image.asset('assets/images/dice1.png'),
        //         ),
        //       ),
        //       Expanded(
        //         child: TextButton(
        //           onPressed: () {
        //             print("Right button pressed");
        //           },
        //           child: Image.asset('assets/images/dice2.png'),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    ));

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var diceNumber = 3;

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print("Left button pressed");
              },
              child: Image.asset('assets/images/dice$diceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print("Right button pressed");
              },
              child: Image.asset('assets/images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class DicePageSt extends StatefulWidget {
  const DicePageSt({Key? key}) : super(key: key);

  @override
  _DicePageStState createState() => _DicePageStState();
}

class _DicePageStState extends State<DicePageSt> {
  var diceNumber1 = 1;
  var diceNumber2 = 1;

  void changeDice() {
    setState(() {
      diceNumber1 = Random().nextInt(6) + 1;
      diceNumber2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDice();
                });
              },
              child: Image.asset('assets/images/dice$diceNumber1.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDice();
                });
              },
              child: Image.asset('assets/images/dice$diceNumber2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
