import 'package:flutter/material.dart';
import 'package:online_tasks/authentication/widgets/custom_txt_btn.dart';

class CustomSentenceRow extends StatelessWidget {
  final String sentenceTxt;
  final String btnTxt;

  const CustomSentenceRow({
    super.key,
    required this.sentenceTxt,
    required this.btnTxt
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sentenceTxt,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),

        SizedBox(width: 6,),

        CustomTxtBtn(txt: btnTxt, txtColor: Colors.cyan)
      ],
    );
  }
}
