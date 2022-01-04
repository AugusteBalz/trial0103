import 'package:flutter/material.dart';
import 'package:trial0103/assets/globals.dart';
import 'package:trial0103/models/blueprint_mood.dart';

import 'package:trial0103/models/mood_entries.dart';
import 'package:trial0103/models/moods.dart';
import 'package:trial0103/models/one_mood.dart';
import 'package:trial0103/widgets/display_mood_sliders.dart';
import 'package:trial0103/widgets/moodlog_list.dart';
import 'package:trial0103/widgets/new_mood.dart';

class LogMoodScreenTwo extends StatefulWidget {
  const LogMoodScreenTwo({Key? key}) : super(key: key);

  @override
  State<LogMoodScreenTwo> createState() => _LogMoodScreenTwoState();
}

class _LogMoodScreenTwoState extends State<LogMoodScreenTwo> {
  void _addNewMoodEntryFinal() {


    setState(() {


      //puts it reversed
      moodEntryList.insert(0, oneEntry);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second mood screen"),

        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0, top: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);

                  _addNewMoodEntryFinal();
                },
                child: Text(
                  "Done",
                  style: TextStyle(fontSize: 20),
                ),
              )
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [

            //TODO:display sliders with subemotion names


            DisplayMoodSliders(),
            //when person fills up all the fields on both screens we can commit
           // NewMood(_addNewMoodEntry),
          ],
        ),
      ),
    );
  }
}
