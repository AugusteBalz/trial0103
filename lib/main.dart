import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trial0103/widgets/user_mood.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent
          //color set to transperent or set your own color
        ));

    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
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
      body: Column(
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
    );
  }
}
