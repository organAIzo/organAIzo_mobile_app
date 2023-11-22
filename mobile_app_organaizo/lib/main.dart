import 'package:flutter/material.dart';
import 'package:mobile_app_organaizo/pages/splash_screen.dart';
//import 'package:mobile_app_organaizo/pages/home.dart';
//import 'package:mobile_app_organaizo/pages/BasicCalendar.dart';
//import 'package:mobile_app_organaizo/Navigation/Navigation.dart';
//import 'package:mobile_app_organaizo/pages/splash_screen.dart';

void main(){
  runApp(const MyApp(
   // title: 'OrganAIzo',

   // initialRoute: '/',

   // routes: {
   //   '/': (context) => const SplashScreen(),
   //   '/navigation': (context) => const Navigation(),
   //   '/home': (context) => const HomePage(),
   //   '/kalender': (context) => const TableBasicsExample(),
   // },

  ));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen());
      }}