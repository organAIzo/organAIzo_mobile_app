
import 'package:mobile_app_organaizo/pages/home.dart';
import 'package:mobile_app_organaizo/profile/profile.dart';
import 'package:mobile_app_organaizo/login/login_screen.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/login': (context) => const LoginScreen()

};