import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app_organaizo/pages/splash_screen.dart';
import 'package:mobile_app_organaizo/login/login_screen.dart';


Future<void> firebase() async {
 await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
}
void main(){
  runApp(const MyApp(
   
  ));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen());
      }}