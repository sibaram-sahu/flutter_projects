import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/1.png';
  void rollDice() {
    setState(() {
      activeDice = 'assets/images/roll.gif';
    });

    Timer(const Duration(seconds: 1), () {
      setState(() {
        var diceNumber = randomizer.nextInt(6) + 1;
        activeDice = 'assets/images/$diceNumber.png';
      });
    });
  }

  void resetDice() {
    setState(() {
      activeDice = 'assets/images/1.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDice, width: 80),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 16),
          ),
          child: const Text("Roll Dice"),
        ),
        TextButton(
          onPressed: resetDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 16),
          ),
          child: const Text("Reset"),
        )
      ],
    );
  }
}
