import 'package:flutter/material.dart';

class CustomTextHeader extends StatelessWidget {
  final String headerText;

  const CustomTextHeader({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          headerText,
          style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: 'OutfitRegular',
          ),
        ),

        SizedBox(height: 24,),
      ],
    );
  }
}
