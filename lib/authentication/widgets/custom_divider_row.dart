import 'package:flutter/material.dart';

class CustomDividerRow extends StatelessWidget {
  final String rowTxt;

  const CustomDividerRow({
    super.key,
    required this.rowTxt
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 2,
            color: Colors.grey[400],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Or $rowTxt with',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16
            ),
          ),
        ),

        Expanded(
          child: Divider(
            thickness: 2,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
