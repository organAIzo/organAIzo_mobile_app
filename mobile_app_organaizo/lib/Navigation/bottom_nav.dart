import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
             size: 20,
             
              ),
               label: 'Home',),
               BottomNavigationBarItem(
          icon: Icon(
            Icons.access_alarm,
             size: 20,
             
              ),
               label: 'Test',),

                BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_month,
             size: 20,
             
              ),
               label: 'organizer',),

               BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
             size: 20,
             
              ),
               label: 'Profile',),
      ],
      fixedColor: const Color.fromARGB(255, 236, 7, 7),
      onTap: (int idx) {
        switch(idx) {
          case 0:
            break;
          case 1:
          Navigator.pushNamed(context, '/calory_tracker');
            break;
          case 2:
          Navigator.pushNamed(context, '/org_home');
          case 3:
          Navigator.pushNamed(context, '/profile');
            break;
                  

        }
      },

    );
  }
}