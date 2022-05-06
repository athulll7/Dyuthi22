import 'package:dyuthi22/result_display.dart';
import 'package:dyuthi22/results.dart';
import 'package:flutter/material.dart';

class ResultOffstageList extends StatelessWidget {
  const ResultOffstageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        Result result;
        result = Result(
            event: "event $index",
            name1: "name $index",
            department1: "department $index",
            name2: "name $index",
            department2: "department $index",
            name3: "name $index",
            department3: "department $index");
        return Row(
          children: [
            Expanded(
              child: TextButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => ResultDisplay(
                              event: result.event,
                              name1: result.name1,
                              department1: result.department1,
                              name2: result.name2,
                              department2: result.department2,
                              name3: result.name3,
                              department3: result.department3,
                            )));
                  },
                  child: Text("Event $index")),
            ),
          ],
        );
      },
      separatorBuilder: (ctx, index) {
        return Divider(height: 3);
      },
      itemCount: 10,
    );
  }
}
