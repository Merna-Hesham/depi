import 'package:flutter/material.dart';
import 'package:online_tasks/authentication/widgets/custom_elevated_btn.dart';
import 'package:online_tasks/authentication/widgets/custom_icon_container.dart';
import 'package:online_tasks/authentication/widgets/custom_divider_row.dart';
import 'package:online_tasks/authentication/widgets/custom_icons_row.dart';
import 'package:online_tasks/authentication/widgets/custom_sentence_row.dart';
import 'package:online_tasks/authentication/widgets/custom_text_field.dart';
import 'package:online_tasks/authentication/widgets/custom_text_header.dart';
import 'package:online_tasks/authentication/widgets/custom_txt_btn.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          
              CustomTextHeader(headerText: 'Welcome back! Glad \nto see you, Again!'),
          
              CustomTextField(hintTxt: 'Enter your email', keyboardType: TextInputType.emailAddress,),
          
              CustomTextField(hintTxt: 'Enter your password', isObscure: true, iconField: Icon(Icons.remove_red_eye),),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTxtBtn(txt: 'Forget Password?', txtColor: Colors.black),
                ],
              ),
          
              CustomElevatedBtn(btnTxt: 'Login', txtColor: Colors.white, bgColor: Colors.black87),
          
              CustomDividerRow(rowTxt: 'Login',),
          
              CustomIconsRow(),

              SizedBox(height: 200,),
          
              Expanded(
                  child: CustomSentenceRow(sentenceTxt: "Don't have an account?", btnTxt: 'Register Now',)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
