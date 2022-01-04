library mood_as_classes.globals;

import 'package:flutter/material.dart';
import 'package:trial0103/models/blueprint_mood.dart';
import 'package:trial0103/models/mood_entries.dart';
import 'package:trial0103/models/moods.dart';
import 'package:trial0103/models/one_mood.dart';
import 'package:trial0103/assets/constants_of_mood.dart';

List<String> displayMoods = [
  "jelous",
  "hurt",
  "furious",
  "mad",
  "triggered",

  //-------

  "scared",
  "insecure",
  "helpless",
  "anxious",

  //-------

  "romantic",
  "sentimental",
  "appreciative",
];

List<String> selectedDisplayMoods = [];

ConstantsOfMood wholeList = ConstantsOfMood();

Map<String, BlueprintMood> nameToBlueprint = {
  //ANGRY
  "jelous": wholeList.JELOUS,
  "hurt": wholeList.HURT,
  "furious": wholeList.FURIOUS,
  "mad": wholeList.MAD,
  "triggered": wholeList.TRIGGERED,

  //FEAR

  "scared": wholeList.SCARED,
  "insecure": wholeList.INSECURE,
  "helpless": wholeList.HELPLESS,
  "anxious": wholeList.ANXIOUS,

  //LOVE

  "romantic": wholeList.ROMANTIC,
  "sentimental": wholeList.SENTIMENTAL,
  "appreciative": wholeList.APPRECIATIVE,

  "lonely": wholeList.LONELY,
  "disappointed": wholeList.DISAPPOINTED,
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
