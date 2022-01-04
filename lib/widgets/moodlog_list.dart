import 'package:flutter/material.dart';
import 'package:trial0103/models/mood_entries.dart';
import 'package:intl/intl.dart';





class MoodLogList extends StatelessWidget {
  final List<MoodEntry> moodEntries;

  MoodLogList(this.moodEntries);



  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Column(
          //map the list of transactions to the widgets
          //"for each moodlog "md" draw a widget"
          children:

          moodEntries.map((entry) {
            //take off the time from the map key

            print(entry.id);

            DateTime entryTime = entry.dateTime;


            return Column(
              children: [

                Container(

                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),

                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [

                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                          ),

                          child: Text(
                            DateFormat("MMM d, hh:mm")
                                .format(entryTime),
                            //writes out the date
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.blueGrey),
                          ),
                        ),
                        Column(
                          //map the list of moods to the widgets
                          //"for each moodlog "md" draw a widget"

                          children:

                          entry.eachMood.map((md) {
                            //previous output:
                            // "SecondaryMood.angry_jelous"
                            //this leaves it just with "jelous"



                            String temp = md.moodSecondary.toString();
                            String newMoodS = temp.substring(
                                (temp.indexOf("_") + 1), temp.length);

                            //same goes with primary moods

                            String temp2 = md.moodPrimary.toString();
                            String newMoodP = temp2.substring(
                                (temp2.indexOf(".") + 1), temp2.length);

                            //TODO: add actual strength and not a random number == it should work now??
                            int subStrenght = md.strength;
                            // String somtheing = "${md.strength}"; // string interpolation?

                            //color

                            //TODO: same here just with color
                            Color myColor = md.color;

                            //displaying widgets

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
                                              child: Text(newMoodP,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                    color: Colors.lightBlueAccent,
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
                                                newMoodS,
                                                // style: GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 25)
                                              ),
                                            ),

                                            //its strenght
                                            Container(
                                              child: Text(
                                                subStrenght.toString(),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25,
                                                    color: myColor),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )

                              //Text(newMood),

                            );
                          }).toList(),


                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );


      /*
      Column(
      children: moodEntries.map((tx) {
        return Card(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.deepPurpleAccent,
                      width: 2,
                    )),
                padding: EdgeInsets.all(10),
                child: Text(
                  //tx.amount.toString(), or
                  tx.id,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.id,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMd().format(tx.dateTime),
                    style: TextStyle(
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );




    */
  }
}