

import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget{
const ResultsScreen({super.key});
 
  @override
  Widget build(context) {
   return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("You have answered x out of y question "),
            const SizedBox(height: 30),
            const Text("List of Question, correct amswer, choosen answer"),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text("Restart")),
          ],
        ),
      ),
    );
  }
}