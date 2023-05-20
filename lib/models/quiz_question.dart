class QuizQ {
  const QuizQ(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShuffledAnswers() {
    final shufflist = List.of(answers);
    shufflist.shuffle();
    return shufflist;
  }
}
