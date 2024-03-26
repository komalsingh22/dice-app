import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activenumber= 'assets/images/dice-1.png';

  void diceroll(){
    final num =Random().nextInt(6)+1;

    setState(() {
       activenumber='assets/images/dice-$num.png';
      
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(activenumber, width: 200,),
        const SizedBox(height: 20,),
         ElevatedButton(onPressed: diceroll, child:const  Text('Roll Dice'))

      ],
    );
  }
}