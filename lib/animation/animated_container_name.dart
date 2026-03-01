import 'package:flutter/material.dart';

class AnimatedContainerName extends StatefulWidget {
  const AnimatedContainerName({super.key});

  @override
  State<AnimatedContainerName> createState() => _AnimatedContainerNameState();
}

class _AnimatedContainerNameState extends State<AnimatedContainerName> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() => clicked =!clicked),
          child: AnimatedContainer(
            width: clicked? 300 : 100,
            height: clicked? 300 : 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(clicked? 30 : 10),
              color: clicked? Colors.black : Colors.white,
            ),
            duration: Duration(seconds: 1),
            child: Center(
              child: Text(
                clicked? 'Merna' : 'Hesham',
                style: TextStyle(
                  color: clicked? Colors.white : Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
