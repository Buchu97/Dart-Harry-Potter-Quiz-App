import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SummarySection extends StatelessWidget{
   const SummarySection(this.displayData, {super.key});
   final List<Map<String,Object>> displayData;

   bool isCorrect(String userInput, String correctAns){
      return userInput == correctAns;
   }
 @override
  Widget build(context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: displayData.map((data){
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isCorrect(data['choosenAnswer'] as String, data['correctAnswer'] as String)?
                  const Color.fromARGB(100, 0, 255, 0):
                  const Color.fromARGB(99, 255, 0, 0),
                  borderRadius: BorderRadius.circular(100),
                ),
                child:
                
                 Text(((data['questionIndex']as int)+1).toString())),
              const SizedBox(width: 20),
              Expanded(
                child: Column (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(data['question'] as String),
                  Text(data['choosenAnswer'] as String),
                  Text(data['correctAnswer'] as String),
                  const SizedBox(height: 10),
                
                ],),
              )
            ],);
          }, ).toList(),
        ),
      ),
    );

    
  }
}