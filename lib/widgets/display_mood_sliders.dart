import 'package:flutter/material.dart';
import 'package:trial0103/assets/globals.dart';
import 'package:trial0103/widgets/display_one_slider.dart';



class DisplayMoodSliders extends StatefulWidget {
  const DisplayMoodSliders({Key? key}) : super(key: key);


  @override
  _DisplayMoodSliders createState() => _DisplayMoodSliders();
}

class _DisplayMoodSliders extends State<DisplayMoodSliders> {

  double currentSliderValue = 1;

  int arraylength= selectedDisplayMoods.length;



  @override
  Widget build(BuildContext context) {
    return Container(child:
        Column(

          children:

          selectedDisplayMoods.map((oneEmotion) {

            oneSubEmotion = oneEmotion;



           // currentSliderValue = sliders.elementAt(0);

            //displaying widgets

            return DisplayOneSlider();
          }).toList(),


        )
      ,);
  }
}
