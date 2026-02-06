import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app_routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = GoRouterState.of(context);
    final data = state.extra as Map<String, dynamic>;
    final name = data['name'];
    final age = data['age'];

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
          'My Profile',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue[200],
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.blue[900],
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Text(
              name,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              age.toString(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
