import 'package:flutter/material.dart';

class CustomElevatedBtn extends StatelessWidget {
  final String btnTxt;
  final Color txtColor;
  final Color bgColor;

  const CustomElevatedBtn({
    super.key,
    required this.btnTxt,
    required this.txtColor,
    required this.bgColor
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),

        SizedBox(
          height: 54,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: (){ },
            style: ElevatedButton.styleFrom(
                backgroundColor: bgColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  side: BorderSide(
                      color: Colors.black87,
                      width: 2
                  ),
                )
            ),
            child: Text(
              btnTxt,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: txtColor
              ),
            ),
          ),
        ),

        SizedBox(height: 10,),
      ],
    );
  }
}
