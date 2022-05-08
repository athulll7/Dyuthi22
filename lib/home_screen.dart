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
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Image(
              height: 200,
              image: AssetImage('assets/images/dythi logo.png'),
              width: 400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 15, 5, 4),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 100,
                    width: 600,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => EventScreen()));
                        },
                        icon: Image.asset(
                            "assets/images/WhatsApp Image 2022-05-08 at 12.26.33 AM.jpeg")),
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
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ResultScreen()));
                        },
                        icon: Image.asset(
                            "assets/images/WhatsApp Image 2022-05-08 at 1.01.58 AM.jpeg")),
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
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ScoreScreen()));
                        },
                        icon: Image.asset(
                            "assets/images/WhatsApp Image 2022-05-08 at 12.25.30 AM.jpeg")),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
