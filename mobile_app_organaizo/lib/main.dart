import 'package:flutter/material.dart';
import 'package:mobile_app_organaizo/pages/home.dart';
import 'package:mobile_app_organaizo/pages/BasicCalendar.dart';
import 'navigation.dart';

void main(){
  runApp(MaterialApp(
    title: 'OrganAIzo',

    //initialRoute: '/',

    routes: {
      '/': (context) => Navigation(),
      '/home': (context) => HomePage(),
      '/kalender': (context) => TableBasicsExample(),
    }
  ));

}


// Stateless = No dynamic data
// Terminal r - hot reload 
// Terminal R - hot Rebuild
// CTRL + Space inside of method to see all possible options
// Container() to move widgets around
// https://www.youtube.com/watch?v=1xipg02Wu8s&t=232s

// 5 Tips for Flutter: https://www.youtube.com/watch?v=_7qv9zHEgTc
// 1. Check out the Flutter Community => https://www.flutter.dev/community
// Avoid learning state management
// Scaffold, Listview, Column, Button
//3. The Best Architecture doesnt exist => Stick to basics
//4. Focus on skills and widgets you need 
//5.  

// Refactor with refactor




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage());
      }}