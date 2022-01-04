

import 'package:flutter/material.dart';
import 'package:trial0103/assets/globals.dart';

class DisplayOneSlider extends StatefulWidget {
  const DisplayOneSlider({Key? key}) : super(key: key);

  @override
  _DisplayOneSliderState createState() => _DisplayOneSliderState();
}

class _DisplayOneSliderState extends State<DisplayOneSlider> {

  //TODO: is this a good way to pass this argument?


  double currentSliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          padding: EdgeInsets.symmetric(
              vertical: 1, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    //primary mood
                    Container(
                      child: Text(oneSubEmotion,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,

                          )),
                    ),

                    //the date
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 8, horizontal: 5),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    //secondary mood
                    Container(
                      child: Text(
                        oneSubEmotion,
                        // style: GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: )

                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Slider(
                      value: currentSliderValue,
                      max: 10,
                      divisions: 10,
                      label: currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          currentSliderValue = value;
                        });
                      },
                    )


                  ],
                ),
              ),
            ],
          ),
        )

      //Text(newMood),

    );
  }
}
