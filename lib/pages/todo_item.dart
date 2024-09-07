// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';


class TodoItem extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  TodoItem({super.key, required this.taskName, required this.taskCompleted, required this.onChanged});

  Color customColor = Color(0xFF212221);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: customColor,
            borderRadius: BorderRadius.circular(8),
        ),

        child: Row(
          children: [Checkbox(value: taskCompleted, onChanged: onChanged), Text( taskName, style: TextStyle(fontSize: 18, ),), ],
        ),
      ),
    );
  }
}
