

//import 'package:first_app/styled_text.dart';
//import 'dart:math';

import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

var startAlignment =  Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const  GradientContainer(this.color, {super.key});

final List<Color> color ;


  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:  color,
              begin: startAlignment ,
              end:endAlignment ,
            ),
          ),
          child:  const Center(
            child: DiceRoller() , 
          ),
        );
  }
}