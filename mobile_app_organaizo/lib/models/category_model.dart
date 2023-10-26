import 'package:flutter/material.dart';

class CategoryModel {
  String name; 
  Widget iconPath; 
  Color boxColor;

  CategoryModel({
    required this.name, 
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];


    categories.add(
      CategoryModel(name: 'Calendar', iconPath: const Icon(Icons.calendar_month_outlined), boxColor: const Color.fromARGB(255, 5, 26, 133))
    );
    categories.add(
      CategoryModel(name: 'Health', iconPath: const Icon(Icons.health_and_safety), boxColor: const Color.fromARGB(255, 55, 230, 2))
    );
    categories.add(
      CategoryModel(name: 'Sports', iconPath: const Icon(Icons.sports_football_outlined), boxColor: const Color.fromARGB(255, 184, 14, 8))
    );
    categories.add(
      CategoryModel(name: 'Work', iconPath: const Icon(Icons.work), boxColor: const Color.fromARGB(255, 6, 201, 184))
    );


    return categories;
  }
}