import 'package:flutter/material.dart';

class NumberField extends StatelessWidget {
  const NumberField(
      {super.key, required this.controller, required this.onChange});
  final TextEditingController controller;
  final void Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      controller: controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter the second number',
      ),
      onChanged: onChange,
    );
  }
}
