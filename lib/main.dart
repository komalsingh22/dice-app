

import 'package:dice/dice_roller.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: Center(child: DiceRoller()),
      ),
    )
  );
}