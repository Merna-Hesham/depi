import 'package:flutter/material.dart';
import '../widgets/Custom_text_field.dart';
import '../widgets/custom_divider_row.dart';
import '../widgets/custom_elevated_btn.dart';
import '../widgets/custom_icon_container.dart';
import '../widgets/custom_icons_row.dart';
import '../widgets/custom_sentence_row.dart';
import '../widgets/custom_text_header.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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

              CustomTextHeader(headerText: 'Hello! Register to get \nstarted'),

              CustomTextField(hintTxt: 'Username', keyboardType: TextInputType.name,),

              CustomTextField(hintTxt: 'Email', keyboardType: TextInputType.emailAddress,),

              CustomTextField(hintTxt: 'Password', isObscure: true,),

              CustomTextField(hintTxt: 'Confirm password', isObscure: true),

              CustomElevatedBtn(btnTxt: 'Register', txtColor: Colors.white, bgColor: Colors.black87),

              CustomDividerRow(rowTxt: 'Register',),

              CustomIconsRow(),

              SizedBox(height: 70,),

              Expanded(
                  child: CustomSentenceRow(sentenceTxt: 'Already have an account?', btnTxt: 'Login Now',)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
