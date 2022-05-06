import 'package:dyuthi22/result_offstage_list.dart';
import 'package:dyuthi22/result_onstage_list.dart';
import 'package:dyuthi22/results_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabResultController;

  List<ResultModel> results = <ResultModel>[];
  getResultFromSheet() async {
    var raw = await http.get(Uri.parse(
        "https://script.google.com/macros/s/AKfycbxNqYtzUn-sHGH5FebrAziKgujYt6IPVevokQJLOt_fYjdCx5OWxUhMleZUCL5S3xcb/exec"));

    var jsonResult = convert.jsonDecode(raw.body);

    jsonResult.forEach((element) {
      ResultModel resultModel = new ResultModel();
      resultModel.event = element['event'];
      resultModel.position = element['position'];
      resultModel.name = element['name'];
      resultModel.department = element['department'];

      results.add(resultModel);
    });
  }

  @override
  void initState() {
    _tabResultController = TabController(length: 2, vsync: this);
    getResultFromSheet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          toolbarHeight: 80,
          title: const Text("Results"),
          bottom: TabBar(
            controller: _tabResultController,
            labelColor: Colors.white,
            tabs: const [Tab(text: "On Stage"), Tab(text: "Off Stage")],
          ),
        ),
        body: Column(children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Events"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Expanded(
            child: TabBarView(
                controller: _tabResultController,
                children: [ResultOnstageList(), ResultOffstageList()]),
          )
        ]));
  }
}

class ResultTile extends StatelessWidget {
  final String? event;
  final String? position;
  final String? name;
  final String? department;

  ResultTile({this.event, this.position, this.name, this.department});
  @override
  Widget build(BuildContext context) {
    return Container(child: Row(children: [Text(event.toString())]));
  }
}
