import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBody extends StatelessWidget {
  const AppBody(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png',
                width: 300, color: const Color.fromARGB(150, 231, 225, 225)),
            const SizedBox(height: 40),
            Text("Football Quiz",
                style: GoogleFonts.lato(color: Colors.white, fontSize: 28)),
            const SizedBox(height: 20),
            TextButton.icon(
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_circle_right_outlined),
              label: const Text("Start"),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
