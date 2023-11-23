import 'package:flutter/material.dart';
import 'package:mobile_app_organaizo/Navigation/bottom_nav.dart';


class Topics extends StatelessWidget {
  const Topics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.black),
        child: const Column(
          children: [

          ],
        ),
      )
    );
  }
}