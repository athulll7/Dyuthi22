import 'package:dyuthi22/event_offstage_list.dart';
import 'package:dyuthi22/event_onstage_list_day1.dart';
import 'package:dyuthi22/score_model.dart';
import 'package:flutter/material.dart';
import 'package:dyuthi22/event_onstage_list_day2.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
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
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              EventOffstageList(),
              EventOnstageList1(),
              EventOnstageList2()
            ]),
          )
        ],
      ),
    );
  }
}
