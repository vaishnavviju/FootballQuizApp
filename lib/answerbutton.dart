import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.anstext, this.click, {super.key});
  final String anstext;
  final void Function() click;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(10),
        backgroundColor: const Color.fromARGB(255, 16, 7, 61),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular((40)),
        ),
      ),
      child: Text(anstext, textAlign: TextAlign.center),
    );
  }
}
