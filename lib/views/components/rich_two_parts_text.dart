import 'package:flutter/material.dart';

class RichTwoPartsText extends StatelessWidget {
  final String leftPart;
  final String rightPart;
  const RichTwoPartsText(
      {super.key, required this.leftPart, required this.rightPart});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: Colors.white, height: 1.5),
        children: [
          TextSpan(
            text: leftPart,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' $rightPart',
          ),
        ],
      ),
    );
  }
}
