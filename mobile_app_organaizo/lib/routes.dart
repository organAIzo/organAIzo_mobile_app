
import 'package:mobile_app_organaizo/calory_tracker/start_page/calory_tracker_start.dart';
import 'package:mobile_app_organaizo/organizer/org_home.dart';
import 'package:mobile_app_organaizo/pages/home.dart';
import 'package:mobile_app_organaizo/profile/profile.dart';
import 'package:mobile_app_organaizo/login/login_screen.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/login': (context) => const LoginScreen(),
  '/calory_tracker': (context) => const CaloryScreen(),
  '/org_home': (context) => const organizerHome(),


};