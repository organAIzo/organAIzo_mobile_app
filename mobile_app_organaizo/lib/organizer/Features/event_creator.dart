import 'package:flutter/material.dart';


class Appointment extends StatefulWidget {

 final String title;
 final String description;
 final DateTime startTime;
 final DateTime endTime;
 final String? location;
 final bool isAllDay;
 final List? attendees;
 


  const Appointment({
    required this.title,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.location,
    required this.isAllDay,
    required this.attendees,
    super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          

        ],
      )
    );
  }
}

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}