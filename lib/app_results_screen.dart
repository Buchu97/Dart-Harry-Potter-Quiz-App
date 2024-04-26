

import 'package:flutter/material.dart';
import 'package:hp_quiz/app_summar_section.dart';
import 'package:hp_quiz/data/question.dart';

class ResultsScreen extends StatelessWidget{
const ResultsScreen({super.key, required this.collectAnswers});

final List<String> collectAnswers;

List<Map<String,Object>> getSummaryData(){
  List<Map<String,Object>> summaryData= [];
  for(var loopVariable = 0; loopVariable<collectAnswers.length; loopVariable++ ){
    summaryData.add(
      {
        'questionIndex' : loopVariable,
        'question' : question[loopVariable].questiontext,
        'correctAnswer': question[loopVariable].answersList[0],
        'choosenAnswer': collectAnswers[loopVariable],
      }
    );
  }
  return summaryData;
}

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
             SummarySection(getSummaryData()),
            const Text("List of Question, correct amswer, choosen answer"),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text("Restart")),
          ],
        ),
      ),
    );
  }
}