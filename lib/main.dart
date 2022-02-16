import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/images/dice1.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/images/dice2.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    ));

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Image(
          image: AssetImage('assets/images/dice2.png'),
        ),
      ],
    );
  }
}
