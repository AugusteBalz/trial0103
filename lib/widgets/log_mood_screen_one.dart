import 'package:flutter/material.dart';
import 'package:trial0103/assets/globals.dart';

import 'package:trial0103/models/mood_entries.dart';
import 'package:trial0103/models/moods.dart';
import 'package:trial0103/models/one_mood.dart';
import 'package:trial0103/widgets/moodlog_list.dart';
import 'package:trial0103/widgets/new_mood.dart';


class LogMoodScreenOne extends StatefulWidget {
  const LogMoodScreenOne({Key? key}) : super(key: key);

  @override
  State<LogMoodScreenOne> createState() => _LogMoodScreenOneState();
}

class _LogMoodScreenOneState extends State<LogMoodScreenOne> {

  void _addNewMoodEntry(String txTitle, double txAmount) {

    final MoodEntry newEntry =
    MoodEntry(id: "k1", dateTime: DateTime.now(), eachMood: []);


    setState(() {


      //add one new mood
      newEntry.eachMood.add(
          OneMood(moodPrimary: PrimaryMoods.Joy, moodSecondary: SecondaryMoods.joy_Proud, strength: 10, color: Colors.yellow)
      );

      // moodEntryListlocal.add(newEntry);
      //puts it reversed
      moodEntryList.insert(0, newEntry);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
      ),
      body: Center(
        child: Column(
          children: [
            NewMood(_addNewMoodEntry),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}