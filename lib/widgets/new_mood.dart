import 'package:flutter/material.dart';


class NewMood extends StatelessWidget {
  final Function addMood;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewMood(this.addMood);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'emotion',
              ),
              //takes the user input
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'strength',
              ),
              controller: amountController,
            ),
            TextButton(
              child: Text("Log Mood"),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.deepPurple,
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                addMood(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
