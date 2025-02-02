import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey.shade800,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AutoSizeText(
              text,
              minFontSize: 20,
              maxFontSize: 80,
              maxLines: 1,
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontWeight: FontWeight.w100,
                decoration: TextDecoration.none,
                fontSize: 80,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
