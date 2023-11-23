import 'package:flutter/material.dart';
import 'package:mobile_app_organaizo/services/auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(235, 51, 48, 48)
        ),
        child: Column(
        children: <Widget>[
          const SizedBox(height: 350,),

          ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.gamepad, size: 25.0,), label: const Text('Sign in with Google', style: TextStyle(fontSize: 15.0),),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 120, 120, 255),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20)),),

          const SizedBox(height: 20),

          ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.apple, size: 25.0), label: const Text('Sign in with Apple', style: TextStyle(fontSize: 15.0)), 
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
             foregroundColor: Colors.white,
             padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20))),

          const SizedBox(height: 20,),

          ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.email, size: 25.0,), label: const Text('Sign in with E-Mail', style: TextStyle(fontSize: 15.0),), 
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 204, 27, 27),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20))),
        ],

      ),),
              
      );
  }
}