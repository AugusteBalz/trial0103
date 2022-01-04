library mood_as_classes.globals;

import 'package:flutter/material.dart';
import 'package:trial0103/models/blueprint_mood.dart';
import 'package:trial0103/models/mood_entries.dart';
import 'package:trial0103/models/moods.dart';
import 'package:trial0103/models/one_mood.dart';
import 'package:trial0103/assets/constants_of_mood.dart';



List<String> displayMoods = ['happy', 'hurt', 'sad'];

List<String> selectedDisplayMoods = [];

ConstantsOfMood wholeList = ConstantsOfMood();

Map<String, BlueprintMood> nameToBlueprint = {

  "hurt" : wholeList.HURT,
  "mad" : wholeList.MAD,
  "lonely" : wholeList.LONELY,
  "disappointed" : wholeList.DISAPPOINTED,



};

final List<MoodEntry> moodEntryList = [
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

