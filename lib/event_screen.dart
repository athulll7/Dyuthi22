import 'package:dyuthi22/event_offstage_list.dart';
import 'package:dyuthi22/event_onstage_list_day1.dart';
import 'package:dyuthi22/score_model.dart';
import 'package:flutter/material.dart';
import 'package:dyuthi22/event_onstage_list_day2.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen>
    with SingleTickerProviderStateMixin {
  List<ScoreModel> score = <ScoreModel>[];

  getScoreFromSheet() async {
    var raw = await http.get(Uri.parse(
        "https://script.google.com/macros/s/AKfycbwQZVGBamfV0-h23-6M97_Ti6N--hnU3J4vWvqLZ_djN7VEC7cg7smhjzUItKrXdVNi/exec"));

    var jsonScore = convert.jsonDecode(raw.body);
    print('this is Score $jsonScore');
    score = jsonScore.map((json) => ScoreModel.fromJson(json));

    jsonScore.forEach((Element) {
      ScoreModel scoreModel = new ScoreModel();
      scoreModel.department = Element['department'];
      scoreModel.points = Element['points'];

      score.add(scoreModel);
    });
  }

  late TabController _tabController;

  @override
  void initState() {
    getScoreFromSheet();
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        toolbarHeight: 80,
        title: Text("Events"),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: "Off Stage"),
            Tab(text: "On Stage Day 1"),
            Tab(text: "On Stage Day 2")
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Events"),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Text("Time"),
              ),
              Text("Stage"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Text(score.length.toString()),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              EventOffstageList(),
              EventOnstageList1(),
              EventOnstageList2()
            ]),
          ),
          Text("data"),
        ],
      ),
    );
  }
}
