import 'package:firebase_core/firebase_core.dart';
import 'package:mobile_app_organaizo/routes.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app_organaizo/pages/splash_screen.dart';
import 'package:mobile_app_organaizo/login/login_screen.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: appRoutes,
      debugShowCheckedModeBanner: false,
      home: LoginScreen());
      }}