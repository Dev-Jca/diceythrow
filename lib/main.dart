import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: DiceThrow(),
    ),
  );
}

class DiceThrow extends StatefulWidget {
  const DiceThrow({Key? key}) : super(key: key);

  @override
  State<DiceThrow> createState() => _DiceThrowState();
}

class _DiceThrowState extends State<DiceThrow> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'DiceThrow',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        backgroundColor: Colors.blueGrey.shade700,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
