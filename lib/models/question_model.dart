class QuizQuestion{
 const QuizQuestion(this.questiontext, this.answersList);
   final String questiontext;
   final List<String> answersList;
  
  List<String> getShufflAnserList(){
    final shuffledAnswersList = List.of(answersList);
    shuffledAnswersList.shuffle();
    return shuffledAnswersList;
  }
}