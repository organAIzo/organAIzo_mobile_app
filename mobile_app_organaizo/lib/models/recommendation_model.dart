import 'package:flutter/material.dart';

class RecommendationModel {
  String name; 
  Widget icon;
  Color boxColor;
  bool viewisSelected;

  RecommendationModel({
    required this.name,
    required this.icon,
    required this.boxColor,
    required this.viewisSelected
  });

  static List < RecommendationModel > getRecommendation() {
    List < RecommendationModel > recommended = [];

    recommended.add(RecommendationModel(name: "Todays to dos", icon: const Icon(Icons.today), boxColor: const Color.fromARGB(255, 226, 7, 197), viewisSelected: true));
    recommended.add(RecommendationModel(name: "Last Gym Session", icon: const Icon(Icons.sports_football_outlined), boxColor: const Color.fromARGB(255, 77, 197, 7), viewisSelected: false));
    recommended.add(RecommendationModel(name: "Your Breakfast", icon: const Icon(Icons.free_breakfast), boxColor: const Color.fromARGB(255, 10, 87, 100), viewisSelected: false));

    return recommended;
  }
}