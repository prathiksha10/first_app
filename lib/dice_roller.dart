import 'dart:math';
import 'package:flutter/material.dart';

 final randomizer = Random();

class DiceRoller extends StatefulWidget {
   const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
 
  var currentDiceRoll = 2 ;

void rollDice() {
  setState(() {
    currentDiceRoll = randomizer.nextInt(6)+ 1 ;
  });
}

  @override
  Widget build(context) {
    return  Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              Image.asset(
              'assets/dice-$currentDiceRoll.png',
              width: 200
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: rollDice , 
                style : ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  foregroundColor: Colors.black, textStyle: const TextStyle(
                  fontSize: 30,
                  
                ),),
                child: const Text('Roll'))
            ],) ;
  }
}