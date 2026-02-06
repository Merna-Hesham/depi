import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:online_tasks/navigation/app_routes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      leading: GestureDetector(
        onTap: (){
          context.go(AppRoutes.home);
        },
        child: Icon(
          Icons.arrow_back,
          size: 30,
          color: Colors.blue,
        ),
      ),
      backgroundColor: Colors.blue[900],
      title: Text(
        'My Settings',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    ),
      body: Center(
        child: Text(
          'Settings Screen',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.blue[900],
          ),
        ),
      ),
    );
  }
}
