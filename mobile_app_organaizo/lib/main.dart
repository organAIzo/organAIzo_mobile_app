import 'package:flutter/material.dart';
import 'package:mobile_app_organaizo/pages/home.dart';
import 'package:mobile_app_organaizo/pages/BasicCalendar.dart';
import 'Navigation.dart';

void main(){
  runApp(MaterialApp(
    title: 'OrganAIzo',

    initialRoute: '/Nav',

    routes: {
      '/': (context) => HomePage(),
      '/kalender': (context) => TableBasicsExample(),
      '/Nav': (context) => Navigation(),

    }
  ));

}


// Stateless = No dynamic data
// Terminal r - hot reload 
// Terminal R - hot Rebuild
// CTRL + Space inside of method to see all possible options
// Container() to move widgets around
// https://www.youtube.com/watch?v=1xipg02Wu8s&t=232s

// Refactor with refactor
