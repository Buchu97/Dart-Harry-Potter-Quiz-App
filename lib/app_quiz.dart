
import 'package:flutter/material.dart';

import 'package:hp_quiz/app_home_screen.dart';
import 'package:hp_quiz/app_question.dart';
import 'package:hp_quiz/app_results_screen.dart';
import 'package:hp_quiz/data/question.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
State<Quiz> createState(){
  return _Quiz();
}
}

class _Quiz extends State<Quiz>{
  Widget?  activeScreen ;
  List<String> selectedAnswer = [];
  @override
  void initState() {
    activeScreen = HomeScreen(switchScreen);
    super.initState();
  }
   void switchScreen(){
    setState(() {
      activeScreen = QuestionsScreen(onAnswerSelect: collectAnswers);
    });
  }
  void collectAnswers(String answer){
    selectedAnswer.add(answer);
    if(selectedAnswer.length == question.length){
      setState(() {
        activeScreen =   ResultsScreen( collectAnswers: selectedAnswer, restartQuiz: restartQuiz, );
        selectedAnswer = [];
      });
      
    }
  }
  void restartQuiz(){
    setState(() {
      activeScreen = HomeScreen(switchScreen);
    });
  }

@override
  Widget build(context){
    return MaterialApp( 
      home: Scaffold(
        body: Container(
          color: const Color(0xffF2D3AC),
          child: activeScreen
          )
      ),
    );
  }
} 