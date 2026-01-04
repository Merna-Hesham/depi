import 'package:flutter/material.dart';

class CustomTxtBtn extends StatelessWidget {
  final String txt;
  final Color txtColor;

  const CustomTxtBtn({
    super.key,
    required this.txt,
    required this.txtColor
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: txtColor
      ),
    );
  }
}
