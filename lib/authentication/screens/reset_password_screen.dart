import 'package:flutter/material.dart';
import '../widgets/Custom_text_field.dart';
import '../widgets/custom_divider_row.dart';
import '../widgets/custom_elevated_btn.dart';
import '../widgets/custom_icon_container.dart';
import '../widgets/custom_icons_row.dart';
import '../widgets/custom_sentence_row.dart';
import '../widgets/custom_text_header.dart';
import '../widgets/custom_txt_btn.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconContainer(),

              CustomTextHeader(headerText: 'Reset Password'),

              CustomTextField(hintTxt: 'Enter your email', keyboardType: TextInputType.emailAddress,),

              CustomElevatedBtn(btnTxt: 'Send Reset Email', txtColor: Colors.white, bgColor: Colors.black87),
            ],
          ),
        ),
      ),
    );
  }
}
