import 'package:flutter/material.dart';

class CustomIconContainer extends StatelessWidget {
  const CustomIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: BoxBorder.all(
              color: Colors.black26,
              width: 1.5
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 24,
              color: Colors.black,
            ),
          ),
        ),

        SizedBox(height: 24,),
      ],
    );
  }
}
