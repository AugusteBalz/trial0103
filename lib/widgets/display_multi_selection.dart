import 'package:flutter/material.dart';
import 'package:trial0103/assets/globals.dart';
import 'package:trial0103/models/moods.dart';
import 'package:trial0103/models/one_mood.dart';
import 'package:trial0103/widgets/multi_select_chip2.dart';


class DisplayMultiSelection extends StatefulWidget {
  const DisplayMultiSelection({Key? key}) : super(key: key);

  @override
  _DisplayMultiSelectionState createState() => _DisplayMultiSelectionState();
}

class _DisplayMultiSelectionState extends State<DisplayMultiSelection> {
  @override
  Widget build(BuildContext context) {
    return MultiSelectChip(
      displayMoods,
      onSelectionChanged: (selectedList) {
        setState(() {
          SecondaryMoods mood = SecondaryMoods.angry_Default;

          selectedDisplayMoods = [...selectedList];




          /*for (String name in selectedList) {
            mood = mapSMoodToName[name] ?? SecondaryMoods.angry_Default;

            //TODO: fix this to be dynamical
            temporaryEntry.eachMood.add(OneMood(
                moodPrimary: PrimaryMoods.Other,
                strength: 5,
                moodSecondary: mood,
                color: Colors.green));
          }

           */
        });
      },

      //TODO: what is our max selection? Do we need one?
      maxSelection: 5,
    );
  }
}
