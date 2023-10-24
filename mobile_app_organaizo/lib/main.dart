import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,
        title: const Text('organAIzo')),
        body: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,

          // Wrap child in flexible or expanded widget 
          children: [Icon(Icons.backpack), Icon(Icons.leaderboard), Icon(Icons.person)],)
      ),
    );
  }
}