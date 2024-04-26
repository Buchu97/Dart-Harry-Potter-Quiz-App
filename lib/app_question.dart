import 'package:flutter/material.dart';
import 'package:hp_quiz/app_answer_button.dart';
import 'package:hp_quiz/data/question.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({super.key, required this.onAnswerSelect});
 
 void Function(String answer) onAnswerSelect;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsSreen();

  }
}

class _QuestionsSreen extends State<QuestionsScreen> {
 var currentQuestionIndex = 0;
 void answeQuestion (String selectedAnswer){
  setState(() {
     widget.onAnswerSelect(selectedAnswer);  
     currentQuestionIndex++;
  });
 
 }


 

  @override
  Widget build(context) {
     final currentQuestion = question[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.questiontext),
            const SizedBox(height: 30),
            ...currentQuestion.getShufflAnserList().map((answer) {
              return AnswerButton(answerText: answer, onAnswerSelect: (){
                answeQuestion(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}
