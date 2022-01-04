import 'package:flutter/material.dart';
import 'package:trial0103/assets/globals.dart';
import 'package:trial0103/models/one_mood.dart';
import 'package:trial0103/models/slider_widget.dart';

class DisplayOneSlider extends StatefulWidget {
  final OneMood md;


  const DisplayOneSlider({Key? key, required this.md}) : super(key: key);

  @override
  _DisplayOneSliderState createState() => _DisplayOneSliderState();
}

class _DisplayOneSliderState extends State<DisplayOneSlider> {
  //TODO: is this a good way to pass this argument?

  double currentSliderValue = 1;

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [

        SliderWidget(md: widget.md,),

      ],
    );
  }
}
