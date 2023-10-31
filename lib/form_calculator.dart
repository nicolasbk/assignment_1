import 'package:assignment_1/number_field.dart';
import 'package:assignment_1/result_text.dart';
import 'package:flutter/material.dart';

class FormCalculator extends StatefulWidget {
  const FormCalculator({super.key});

  @override
  State<FormCalculator> createState() => _FormCalculatorState();
}

class _FormCalculatorState extends State<FormCalculator> {
  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();
  int result = -1;
  String resultText = 'Enter two numbers and click calculate to get their sum';

  void calculate() {
    var num1Parsed = int.parse(num1Controller.text);
    var num2Parsed = int.parse(num2Controller.text);

    setState(() {
      if (num1Parsed < 0 || num2Parsed < 0) {
        result = -1;
      } else {
        result = num1Parsed + num2Parsed;
        resultText =
            'The sum of $num1Parsed and $num2Parsed is ${result.toString()}';
      }
    });
  }

  void handleChange(String text) {
    if (text.isEmpty || text.toString() == '-') {
      setState(() {
        resultText = 'Enter two numbers and click calculate to get their sum';
      });
    } else if (int.parse(text) < 0) {
      setState(() {
        resultText = 'Please, enter a number higher than zero';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NumberField(
          controller: num1Controller,
          onChange: handleChange,
        ),
        const SizedBox(
          height: 15,
        ),
        const Icon(Icons.add),
        const SizedBox(
          height: 15,
        ),
        NumberField(
          controller: num2Controller,
          onChange: handleChange,
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(onPressed: calculate, child: const Text('Calculate')),
        ResultText(text: resultText),
        // if (result < 0) const ResultText(text: 'Please, enter two numbers higher than zero')
      ],
    );
  }
}
