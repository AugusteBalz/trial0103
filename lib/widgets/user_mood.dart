import 'package:flutter/material.dart';
import 'package:trial0103/assets/globals.dart';

import 'package:trial0103/models/mood_entries.dart';
import 'package:trial0103/models/moods.dart';
import 'package:trial0103/models/one_mood.dart';
import 'package:trial0103/widgets/log_mood_screen_one.dart';
import 'package:trial0103/widgets/moodlog_list.dart';
import 'package:trial0103/widgets/new_mood.dart';

class UserMood extends StatefulWidget {
  const UserMood({Key? key}) : super(key: key);

  @override
  _UserMoodState createState() => _UserMoodState();
}

class _UserMoodState extends State<UserMood> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          child: Text("Log emotions"),
          onPressed: () async {
            final value = await Navigator.pushNamed(context, '/logmood1');

            setState(() {
              MoodLogList();
            });
          },
        ),
        MoodLogList(),
      ],
    );
  }
}
