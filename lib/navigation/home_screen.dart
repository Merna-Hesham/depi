import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:online_tasks/navigation/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Welcome!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    context.go(
                      AppRoutes.profile,
                      extra: {
                        'name': 'Merna',
                        'age': 22,
                      }
                    );
                  },
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),

                SizedBox(
                  width: 5,
                ),

                GestureDetector(
                  onTap: (){
                    context.go(AppRoutes.settings);
                  },
                  child: Icon(
                    Icons.settings,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Home Screen',
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
