import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('organAIzo', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(onTap: () {
          
        },
        child: Container(
          margin:const EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          child: const Icon(Icons.arrow_back, color: Colors.white,),
        )),
        actions: [
          GestureDetector(onTap: () {           
          },
          child: Container(
          margin:const EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          width: 37,
          child: const Icon(Icons.menu, color: Colors.white,),
        )),
        ],

      ),
    );
  }
}