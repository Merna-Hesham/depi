import 'package:flutter/material.dart';
import '../widgets/custom_elevated_btn.dart';
import '../widgets/custom_txt_btn.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/Two_plants.png'),),

          SizedBox(height: 180,),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CustomElevatedBtn(btnTxt: 'Login', txtColor: Colors.white, bgColor: Colors.black87),

                CustomElevatedBtn(btnTxt: 'Register', txtColor: Colors.black87, bgColor: Colors.white),

                SizedBox(height: 70,),

                CustomTxtBtn(txt: 'Continue as a guest', txtColor: Colors.cyan),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
