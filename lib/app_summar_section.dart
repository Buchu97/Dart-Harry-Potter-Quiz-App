import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SummarySection extends StatelessWidget{
   const SummarySection(this.displayData, {super.key});
   final List<Map<String,Object>> displayData;
 @override
  Widget build(context) {
    return Column(
      children: displayData.map((data){
        return Row(children: [
          Text(((data['questionIndex']as int)+1).toString()),
          Expanded(
            child: Column (children: [
              Text(data['question'] as String),
              Text(data['choosenAnswer'] as String),
              Text(data['correctAnswer'] as String),
              
            
            ],),
          )
        ],);
      }, ).toList(),
    );

    
  }
}