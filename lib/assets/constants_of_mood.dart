import 'package:flutter/material.dart';
import 'package:trial0103/assets/colors_of_mood.dart';
import 'package:trial0103/models/blueprint_mood.dart';
import 'package:trial0103/models/moods.dart';

/*
class which holds all emotions asocciated with name, primary and secondary mood and its color

 */

class ConstantsOfMood {

  //ANGRY


  BlueprintMood JELOUS = BlueprintMood(
      name: "jelous",
      moodPrimary: PrimaryMoods.Angry,
      moodSecondary: SecondaryMoods.angry_Jelous,
      color: angryMoodColor);

  BlueprintMood HURT = BlueprintMood(
      name: "hurt",
      moodPrimary: PrimaryMoods.Angry,
      moodSecondary: SecondaryMoods.angry_Hurt,
      color: angryMoodColor);

  BlueprintMood FURIOUS = BlueprintMood(
      name: "furious",
      moodPrimary: PrimaryMoods.Angry,
      moodSecondary: SecondaryMoods.angry_Furious,
      color: angryMoodColor);

  BlueprintMood MAD = BlueprintMood(
      name: "mad",
      moodPrimary: PrimaryMoods.Angry,
      moodSecondary: SecondaryMoods.angry_Mad,
      color: angryMoodColor);

  BlueprintMood TRIGGERED = BlueprintMood(
      name: "triggered",
      moodPrimary: PrimaryMoods.Angry,
      moodSecondary: SecondaryMoods.angry_Triggered,
      color: angryMoodColor);



  //FEARFUL

  BlueprintMood SCARED = BlueprintMood(
      name: "scared",
      moodPrimary: PrimaryMoods.Fearful,
      moodSecondary: SecondaryMoods.fear_Scared,
      color: fearMoodColor);

  BlueprintMood INSECURE = BlueprintMood(
      name: "insecure",
      moodPrimary: PrimaryMoods.Fearful,
      moodSecondary: SecondaryMoods.fear_Insecure,
      color: fearMoodColor);

  BlueprintMood HELPLESS = BlueprintMood(
      name: "helpless",
      moodPrimary: PrimaryMoods.Fearful,
      moodSecondary: SecondaryMoods.fear_Helpless,
      color: fearMoodColor);

  BlueprintMood ANXIOUS = BlueprintMood(
      name: "anxious",
      moodPrimary: PrimaryMoods.Fearful,
      moodSecondary: SecondaryMoods.fear_Anxious,
      color: fearMoodColor);


  //LOVE

  BlueprintMood ROMANTIC = BlueprintMood(
      name: "romantic",
      moodPrimary: PrimaryMoods.Love,
      moodSecondary: SecondaryMoods.love_Romantic,
      color: loveMoodColor);

  BlueprintMood SENTIMENTAL = BlueprintMood(
      name: "sentimental",
      moodPrimary: PrimaryMoods.Love,
      moodSecondary: SecondaryMoods.love_Sentimental,
      color: loveMoodColor);

  BlueprintMood APPRECIATIVE = BlueprintMood(
      name: "appreciative",
      moodPrimary: PrimaryMoods.Love,
      moodSecondary: SecondaryMoods.love_Appreciative,
      color: loveMoodColor);














  //SAD


  BlueprintMood LONELY = BlueprintMood(
      name: "lonely",
      moodPrimary: PrimaryMoods.Sad,
      moodSecondary: SecondaryMoods.sad_Lonely,
      color: sadMoodColor);

  BlueprintMood DISAPPOINTED = BlueprintMood(
      name: "disappointed",
      moodPrimary: PrimaryMoods.Sad,
      moodSecondary: SecondaryMoods.sad_Dissapointed,
      color: sadMoodColor);
}
