import 'package:dyuthi22/score_list.dart';
import 'package:dyuthi22/score_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
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

  @override
  void initState() {
    // TODO: implement initState
    getScoreFromSheet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        toolbarHeight: 80,
        title: Text("Overall Score"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                  child: Text("Department"),
                ),
                Text("Score")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Expanded(child: ScoreList()),
            Text(score.length.toString())
          ],
        ),
      ),
    );
  }
}
