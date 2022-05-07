import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:dyuthi22/event_model.dart';

class EventOnstageList2 extends StatelessWidget {
  EventOnstageList2({Key? key}) : super(key: key);

  Future<List<EventModel>> eventFuture = getEvent();

  static Future<List<EventModel>> getEvent() async {
    const url =
        "https://script.google.com/macros/s/AKfycby2MLAjeh3jTsQjwFxJr5gb5fd3hpahwb-cfDZ0opJNrWNVVqEF0RG--V3wQFgEjskOwA/exec";
    final response = await http.get(Uri.parse(url));
    final body = convert.json.decode(response.body);
    return body.map<EventModel>(EventModel.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<EventModel>>(
          future: eventFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return const CircularProgressIndicator();
            if (snapshot.hasData) {
              final eventss = snapshot.data!;

              return buildScore(eventss);
            } else {
              return const Text("no data");
            }
          },
        ),
      ),
    );
  }

  Widget buildScore(List<EventModel> eventss) => ListView.separated(
        itemBuilder: (ctx, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(eventss[index].events),
              Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 40, 0),
                  child: Text(eventss[index].time)),
              Text(eventss[index].stage),
            ],
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider();
        },
        itemCount: eventss.length,
      );
}
