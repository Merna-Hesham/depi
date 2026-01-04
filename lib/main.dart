import 'package:flutter/material.dart';
import 'package:online_tasks/authentication/screens/authentication_screen.dart';
import 'package:online_tasks/authentication/screens/login_screen.dart';
import 'package:online_tasks/authentication/screens/register_screen.dart';
import 'package:online_tasks/authentication/screens/reset_password_screen.dart';
import 'package:online_tasks/tasks_screen.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResetPasswordScreen(),
    );
  }
}
