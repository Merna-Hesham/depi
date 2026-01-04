import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintTxt;
  final bool isObscure;
  final TextInputType keyboardType;
  final Icon? iconField;

  const CustomTextField({
    super.key,
    required this.hintTxt,
    this.isObscure = false,
    this.keyboardType = TextInputType.name,
    this.iconField,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          obscureText: isObscure,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[100],
            suffixIcon: iconField,
            suffixIconColor: Colors.grey[700],
            hintText: hintTxt,
            hintStyle: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Colors.grey,
                  width: 2
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Colors.grey,
                  width: 2
              ),
            ),
          ),
          cursorColor: Colors.grey[700],
        ),

        SizedBox(height: 24,),
      ],
    );
  }
}
