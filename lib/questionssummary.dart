import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Container(
                  width: 25.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    color: data['user_answer'] == data['correct_answer']
                        ? const Color.fromARGB(255, 50, 147, 227)
                        : const Color.fromARGB(255, 201, 22, 171),
                    shape: BoxShape.circle,
                    border: Border.all(width: 0.5),
                  ),
                  child: Center(
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style:
                          GoogleFonts.lato(color: Colors.black, fontSize: 17),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String,
                          style: GoogleFonts.lato(
                              color: Colors.white, fontSize: 15)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data['user_answer'] as String,
                          style: GoogleFonts.lato(
                              color: Colors.purple, fontSize: 12)),
                      Text(data['correct_answer'] as String,
                          style: GoogleFonts.lato(
                              color: Colors.blue, fontSize: 12)),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
