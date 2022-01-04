import 'package:flutter/material.dart';
import 'package:trial0103/models/blueprint_mood.dart';
import 'package:trial0103/models/moods.dart';

/*
class which holds all emotions asocciated with name, primary and secondary mood and its color

 */

class ConstantsOfMood {

  //ANGRY

  BlueprintMood HURT = BlueprintMood(
      name: "hurt",
      moodPrimary: PrimaryMoods.Angry,
      moodSecondary: SecondaryMoods.angry_Hurt,
      color: Colors.red);

  BlueprintMood MAD = BlueprintMood(
      name: "mad",
      moodPrimary: PrimaryMoods.Angry,
      moodSecondary: SecondaryMoods.angry_Mad,
      color: Colors.red);





  //SAD

  //TODO: fix to take constant color
  MaterialColor colourSad = Colors.blue;

  BlueprintMood LONELY = BlueprintMood(
      name: "lonely",
      moodPrimary: PrimaryMoods.Sad,
      moodSecondary: SecondaryMoods.sad_Lonely,
      color: Colors.blue);

  BlueprintMood DISAPPOINTED = BlueprintMood(
      name: "disappointed",
      moodPrimary: PrimaryMoods.Sad,
      moodSecondary: SecondaryMoods.sad_Dissapointed,
      color: Colors.blue);
}
