
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_app_organaizo/pages/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{


  @override
void initState() {
  super.initState();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  Future.delayed(const Duration(seconds: 7), (){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const HomePage()));
  });
}

@override
void dispose() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromARGB(255, 3, 150, 132), Color.fromARGB(255, 126, 0, 88)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.house, size: 80, color: Colors.white),
            SizedBox(height: 20),
            Text('organAIzo', style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white, 
              fontSize: 32,
            ) ,)
          ],
        ),
      ),
    );
  }
}