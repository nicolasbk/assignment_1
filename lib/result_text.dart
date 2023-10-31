import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  const ResultText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
      textAlign: TextAlign.center,
    );
  }
}
