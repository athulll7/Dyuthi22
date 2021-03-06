import 'package:dyuthi22/results_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:dyuthi22/event_model.dart';

class EventOnstageList1 extends StatelessWidget {
  EventOnstageList1({Key? key}) : super(key: key);

  Future<List<EventModel>> eventFuture = getEvent();

  static Future<List<EventModel>> getEvent() async {
    const url =
        "https://script.google.com/macros/s/AKfycbxVHx1PRwsAoGkY26LoO6KGLRMXLMrF0-kOLCKwE8NYjrQd1VLdMvv1iuxdKwxqqmd0/exec";
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

  Widget buildScore(List<EventModel> eventss) => SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: [
            DataColumn(
                label: Text("Events",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text("Time",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text("Stage",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold))),
          ],
          rows: List.generate(
            eventss.length,
            (index) {
              var eve = eventss[index];
              return DataRow(cells: [
                DataCell(
                  Text(eve.events, style: TextStyle(fontSize: 16)),
                ),
                DataCell(
                  Text(eve.time, style: TextStyle(fontSize: 16)),
                ),
                DataCell(
                  Text(eve.stage, style: TextStyle(fontSize: 16)),
                ),
              ]);
            },
          ).toList(),
        ),
      );
}
