import 'package:flutter/material.dart';
import 'package:mobile_app_organaizo/pages/home.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:mobile_app_organaizo/pages/BasicCalendar.dart';

void main(){
  runApp( const MyApp());
}

// Stateless = No dynamic data
// Terminal r - hot reload 
// Terminal R - hot Rebuild
// CTRL + Space inside of method to see all possible options
// Container() to move widgets around
// https://www.youtube.com/watch?v=1xipg02Wu8s&t=232s

// Refactor with refactor




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage());
      }}