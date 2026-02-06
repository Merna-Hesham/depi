import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:online_tasks/navigation/app_routes.dart';
import 'package:online_tasks/navigation/home_screen.dart';
import 'package:online_tasks/navigation/profile_screen.dart';
import 'package:online_tasks/navigation/settings_screen.dart';

class RoutesGenGo{
  static GoRouter mainAppRouting = GoRouter(
    initialLocation: AppRoutes.home,
      errorBuilder: (context,state) => Scaffold(
        body: Center(
          child: Text(
            'No Route!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
            ),
          ),
        ),
      ),
      routes: [
        GoRoute(
          path: AppRoutes.home,
          name: AppRoutes.home,
          builder: (context,state) => HomeScreen(),
        ),
        GoRoute(
          path: AppRoutes.profile,
          name: AppRoutes.profile,
          builder: (context,state) => ProfileScreen(),
        ),
        GoRoute(
          path: AppRoutes.settings,
          name: AppRoutes.settings,
          builder: (context,state) => SettingsScreen(),
        ),
      ]
  );
}
