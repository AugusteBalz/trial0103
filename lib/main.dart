import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trial0103/widgets/log_mood_screen_one.dart';
import 'package:trial0103/widgets/user_mood.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const MyApp(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/ooo': (context) => const LogMoodScreenOne(),
      },
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

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  // Map<SecondaryMoods, int> allMoodLogs = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Flutter App"),
        backgroundColor: Colors.blueGrey,
        elevation: 5,
        // systemOverlayStyle:
        //works instead of decapitated brightness

        brightness: Brightness.light,
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
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
    );
  }
}
