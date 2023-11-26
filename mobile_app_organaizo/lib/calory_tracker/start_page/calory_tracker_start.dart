import 'package:flutter/material.dart';

class CaloryScreen extends StatelessWidget {
  const CaloryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 14, 1, 82),
        elevation: 25.0,),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(children: 
          [
            const Text('Übersicht', style: TextStyle(color: Color.fromARGB(255, 224, 5, 5), fontSize: 25,),textAlign: TextAlign.left),
            const SizedBox(height: 2,),
            Container(
              height: 200,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(255, 58, 56, 71)
              ),),
            const SizedBox(height: 15,),
            ElevatedButton.icon(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back), label: const Text('BACK'))
          ],),
          
        ),
      ),
    );
  }
}