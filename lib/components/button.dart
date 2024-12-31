import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEAFULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  const Button({
    required this.text,
    required this.cb,
    this.isBig = false,
    this.color = DEAFULT,
    super.key,
  });

  const Button.big({
    required this.text,
    required this.cb,
    this.isBig = true,
    this.color = DEAFULT,
    super.key,
  });

  const Button.operation({
    required this.text,
    required this.cb,
    this.isBig = false,
    this.color = OPERATION,
    super.key,
  });

  final bool isBig;
  final String text;
  final Color color;
  final void Function(String) cb;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isBig ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        onPressed: () => cb(text),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
