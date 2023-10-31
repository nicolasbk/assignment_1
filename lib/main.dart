import 'package:assignment_1/form_calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Calculator'),
            backgroundColor: const Color.fromARGB(255, 0, 88, 182)),
        body: SizedBox(
          width: double.infinity,
          child: Container(
            margin: const EdgeInsets.all(100),
            child: const FormCalculator(),
          ),
        ),
      ),
    ),
  );
}
