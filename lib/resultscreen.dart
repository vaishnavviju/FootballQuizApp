import 'package:app2/quiz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:app2/data/questions.dart';
import 'package:app2/questionssummary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.reset, {super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
  final void Function() reset;
  List<Map<String, Object>> summaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summarydata = summaryData();
    final numtot = questions.length;
    final numcor = summarydata.where((data) {
      return data["user_answer"] == data['correct_answer'] ? true : false;
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("You answered $numcor out of $numtot correctly!",
                style: GoogleFonts.lato(color: Colors.white, fontSize: 22)),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summarydata),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              icon: const Icon(
                Icons.restart_alt,
                color: Colors.white,
              ),
              label: const Text(
                "Restart Quiz",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: reset,
            ),
          ],
        ),
      ),
    );
  }
}
