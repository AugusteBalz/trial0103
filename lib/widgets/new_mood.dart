import 'package:flutter/material.dart';

import 'display_multi_selection.dart';


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
            DisplayMultiSelection(),

            TextButton(
              child: Text("Log Mood // Done"),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.deepPurple,
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                addMood(
                  "had",
                  double.parse("3"),
                );

                Navigator.pop(context);

              },
            )
          ],
        ),
      ),
    );
  }
}

