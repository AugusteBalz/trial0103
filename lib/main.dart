import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trial0103/widgets/mood/slider_widget.dart';
import 'package:trial0103/widgets/mood/log_mood_screen_one.dart';
import 'package:trial0103/widgets/mood/log_mood_screen_two.dart';
import 'package:trial0103/widgets/mood/user_mood.dart';

const primaryColor = Colors.transparent;

void main() {
  runApp(
    MaterialApp(
      title: 'Blossom',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const MyApp(),

        //to multiselect mood log

        '/logmood1': (context) => const LogMoodScreenOne(),

        '/logmood2': (context) => const LogMoodScreenTwo(),
      },
      theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: const Color(0xFF151026),

          // Define the default font family.
          fontFamily: 'Raleway',

          // Define the default `TextTheme`. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w200),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Open sans'),
          ),
          appBarTheme: AppBarTheme(
            // color: Colors.transparent,
            elevation: 1,

            //TODO: if ever needed, very very pretty color!!!!!!!!!!!!
            color: const Color(0xFF151026),
          )),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent
            //color set to transperent or set your own color
            ));

    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //we save the userinput


  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });}


  // Map<SecondaryMoods, int> allMoodLogs = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Blossom"),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text("Hello my beautiful stranger!"),
                elevation: 5,
              ),
            ),

            //widget to select the moods from
            UserMood(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.pink,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart_rounded),
            label: 'Home',
            backgroundColor: Colors.white,


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded),
            label: 'History',
            backgroundColor: Colors.white,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Graphs',
            backgroundColor: Colors.white,

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.miscellaneous_services_rounded),
            label: 'Settings',
            backgroundColor: Colors.white,

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
