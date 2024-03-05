import 'package:flutter/material.dart';
import 'package:app01/gradient_container.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: GradientContainer(
        Colors.amberAccent,
        Colors.lightGreen,
      ),
    ),
  ));
}
