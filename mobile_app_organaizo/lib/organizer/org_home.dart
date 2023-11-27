import 'package:flutter/material.dart';
import 'package:mobile_app_organaizo/organizer/Features/event_creator.dart';

class OrganizerHome extends StatelessWidget {
  const OrganizerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Appointment(),
          ElevatedButton.icon(
          onPressed: (){Navigator.pop(context);}, 
          icon: const Icon(Icons.arrow_back), 
          label: const Text('BACK'))
        ],
      )
    );
  }
}