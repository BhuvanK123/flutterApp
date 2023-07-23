import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {

  String hackathonTitle, task1, task2, task3, task4, task5;

  CardTile({super.key, required this.hackathonTitle, required this.task1, required this.task2, required this.task3, required this.task4, required this.task5});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[600],
      elevation: 4,
      child: ExpansionTile(
        title: Text(hackathonTitle, style: TextStyle(color: Colors.white),),
        children: [
          Text(task1),
          Text(task2),
          Text(task3),
          Text(task4),
          Text(task5),
        ],
      ),
    );
  }
}
