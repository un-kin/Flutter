import 'package:flutter/material.dart';
import 'package:learn/pages/todo_item.dart'; // Assuming todo_item.dart defines TodoItem widget

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List todoList = [
  ["Conti", true]
];


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu), // Use const constructors for immutables
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.calendar_month)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Use const EdgeInsets
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row( // Use Row for horizontal layout
              children: [
                Container(
                  width: 200,
                  child: Text(
                    "Today's Schedule",
                    style: const TextStyle( // Use const for styles
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                )

              ],
            ),
            const SizedBox(height: 16.0), // Consistent spacing
            const Text("List of Titles"), // Assuming this is a static title
            const SizedBox(height: 16.0), // Consistent spacing
            Expanded( // Ensure ListView takes remaining space
              child: ListView.builder(
                itemCount: todoList.length, // Replace with actual item count
                itemBuilder: (context, index) {
                  return TodoItem(
                    taskName: todoList[index][0],
                    taskCompleted: todoList[index][1],
                    onChanged: (p0) {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}