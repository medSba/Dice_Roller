import 'package:app01/text_style.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int activeDiceImage1 = 1;
  int activeDiceImage2 = 1;

  void rollDice(){
    setState(() {
      activeDiceImage1 = random.nextInt(6)+1;
      activeDiceImage2 = random.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize:MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/dice-$activeDiceImage1.png', width: 100,),
            Image.asset('assets/dice-$activeDiceImage2.png', width: 100,),
          ],
        ),
        const SizedBox(height: 20,),
        TextButton(onPressed: (){rollDice();},
          child: const StyledText('Roll Dice'),
        )
      ],);
  }
}
