import 'package:calculator/components/display.dart';
import 'package:calculator/components/keyboard.dart';
import 'package:calculator/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final memory = Memory();

  _onPressed(String value) {
    setState(() {
      memory.applyCommand(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: Column(
        children: [
          Display(text: memory.value),
          Keyboard(cb: _onPressed),
        ],
      ),
    );
  }
}
