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
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
            child: Image(
              height: 250,
              image: AssetImage('assets/images/dythi logo.png'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 120,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => EventScreen()));
                      },
                      icon: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/button_events.jpeg"),
                      )),
                ),
              )
            ],
          ),
          Row(children: [
            Expanded(
              child: SizedBox(
                height: 120,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => ResultScreen()));
                    },
                    icon: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/images/button_results.jpeg"),
                    )),
              ),
            )
          ]),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 120,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => ScoreScreen()));
                      },
                      icon: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/button_score.jpeg"),
                      )),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
