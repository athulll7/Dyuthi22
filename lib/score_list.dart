import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:dyuthi22/score_model.dart';

class ScoreList extends StatelessWidget {
  ScoreList({Key? key}) : super(key: key);

  Future<List<ScoreModel>> scoreFuture = getScore();

  static Future<List<ScoreModel>> getScore() async {
    const url =
        "https://script.google.com/macros/s/AKfycbwQZVGBamfV0-h23-6M97_Ti6N--hnU3J4vWvqLZ_djN7VEC7cg7smhjzUItKrXdVNi/exec";
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
              Text(scores[index].department),
              Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                  child: Text(scores[index].points)),
            ],
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider();
        },
        itemCount: scores.length,
      );
}
