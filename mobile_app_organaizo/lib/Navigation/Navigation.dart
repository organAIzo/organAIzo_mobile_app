// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
//import 'package:mobile_app_organaizo/main.dart';
import 'package:mobile_app_organaizo/pages/BasicCalendar.dart';
import 'package:mobile_app_organaizo/pages/home.dart';


class Navigation extends StatefulWidget{
  const Navigation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavState createState() => _NavState();
}

class _NavState extends State<Navigation> {
  int _currentIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const TableBasicsExample(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const[
          BottomNavigationBarItem(icon: Icon(
            Icons.home,
            size: 30,
          ),
              label: 'Home'
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.calendar_today,
            size: 30,
          ),
            label: 'Kalender',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),



    );
  }

}