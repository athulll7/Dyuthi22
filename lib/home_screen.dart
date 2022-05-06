import 'package:dyuthi22/event_screen.dart';
import 'package:dyuthi22/result_screen.dart';
import 'package:dyuthi22/score_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Image(
            height: 200,
            image: AssetImage('assets/images/dythi logo.png'),
            width: 400,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 15, 5, 4),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23.0),
                            ),
                            textStyle: const TextStyle(
                              fontSize: 24,
                            )),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => EventScreen()));
                        },
                        child: Text("Events")),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 4, 5, 4),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23.0),
                            ),
                            textStyle: const TextStyle(
                              fontSize: 24,
                            )),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ResultScreen()));
                        },
                        child: Text("Results")),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 4, 5, 15),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23.0),
                            ),
                            textStyle: const TextStyle(
                              fontSize: 24,
                            )),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ScoreScreen()));
                        },
                        child: Text("Score")),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => ScoreScreen()));
                    },
                    icon: Image.asset("assets/images/mohini.jpg")),
              )
            ],
          )
        ],
      ),
    ));
  }
}
