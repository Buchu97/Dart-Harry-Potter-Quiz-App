import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("asset/images/download.jpg"),
          const SizedBox(),
          const Text(
            "Harry Potter Quiz App",
            style: TextStyle(color: Colors.brown),
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt_rounded),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.lightBlue
            ),
            onPressed: startQuiz,
            label: const Text(
              "Start the quiz",
              style: TextStyle(color: Colors.brown)
            ),
          )
        ],
      ),
    );
  }
}
