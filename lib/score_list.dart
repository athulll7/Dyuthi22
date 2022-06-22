import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:dyuthi22/score_model.dart';

class ScoreList extends StatelessWidget {
  ScoreList({Key? key}) : super(key: key);

  Future<List<ScoreModel>> scoreFuture = getScore();

  static Future<List<ScoreModel>> getScore() async {
    const url =
        "https://script.google.com/macros/s/AKfycbw4RFv_XbNZ_DoPuqKpE5Z2-8N5NhFLsqRPlWTKvI25RFvm6_ThsgOFYzCT5Y7njEOk/exec";
    final response = await http.get(Uri.parse(url));
    final body = convert.json.decode(response.body);
    return body.map<ScoreModel>(ScoreModel.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<ScoreModel>>(
          future: scoreFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return const CircularProgressIndicator();
            if (snapshot.hasData) {
              final scores = snapshot.data!;
              scores.sort((a, b) => b.points.compareTo(a.points));
              return buildScore(scores);
            } else {
              return const Text("no data");
            }
          },
        ),
      ),
    );
  }

  Widget buildScore(List<ScoreModel> scores) => ListView.separated(
        itemBuilder: (ctx, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(scores[index].department, style: TextStyle(fontSize: 18)),
              Padding(
                  padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                  child: Text(scores[index].points.toString(),
                      style: TextStyle(fontSize: 18))),
            ],
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider();
        },
        itemCount: scores.length,
      );
}
