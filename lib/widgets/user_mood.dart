import 'package:flutter/material.dart';

import 'package:trial0103/models/mood_entries.dart';
import 'package:trial0103/models/moods.dart';
import 'package:trial0103/models/one_mood.dart';
import 'package:trial0103/widgets/moodlog_list.dart';
import 'package:trial0103/widgets/new_mood.dart';


class UserMood extends StatefulWidget {
  const UserMood({Key? key}) : super(key: key);

  @override
  _UserMoodState createState() => _UserMoodState();
}

class _UserMoodState extends State<UserMood> {

  final List<MoodEntry> moodEntryListlocal = [
    MoodEntry(
      id: 'e1',
      dateTime: DateTime.now(),
      eachMood: [
        OneMood(
          moodPrimary: PrimaryMoods.Angry,
          moodSecondary: SecondaryMoods.angry_Hurt,
          strength: 6,
          color: Colors.redAccent,
        ),
        OneMood(
          moodPrimary: PrimaryMoods.Angry,
          moodSecondary: SecondaryMoods.angry_Hurt,
          strength: 4,
          color: Colors.yellow,
        ),
      ],
    ),

    MoodEntry(
      id: 'e2',
      dateTime: DateTime.now(),
      eachMood: [
        OneMood(
          moodPrimary: PrimaryMoods.Angry,
          moodSecondary: SecondaryMoods.angry_Hurt,
          strength: 6,
          color: Colors.redAccent,
        ),
        OneMood(
          moodPrimary: PrimaryMoods.Angry,
          moodSecondary: SecondaryMoods.angry_Hurt,
          strength: 4,
          color: Colors.yellow,
        ),
      ],
    )
  ];




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
      moodEntryListlocal.insert(0, newEntry);
    });
  }







  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewMood(_addNewMoodEntry),
        MoodLogList(moodEntryListlocal),
      ],
    );
  }
}
