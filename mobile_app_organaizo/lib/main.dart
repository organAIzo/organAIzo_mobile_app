import 'package:flutter/material.dart';
import 'package:mobile_app_organaizo/pages/home.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage());
      }}