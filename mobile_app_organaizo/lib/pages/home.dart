import 'package:flutter/material.dart';
import 'package:mobile_app_organaizo/topics/topics.dart';
import 'package:mobile_app_organaizo/login/login_screen.dart';
import 'package:mobile_app_organaizo/services/auth_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: AuthService().userStream, builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Text('Loading');
      } else if (snapshot.hasError) {
        return const Center(
          child: Text('error'),
        );}
        else if (snapshot.hasData) {
          return const Topics();
        } else {
          return const LoginScreen();
        }
      });
  }
}