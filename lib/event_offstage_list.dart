import 'package:flutter/material.dart';

class EventOffstageList extends StatelessWidget {
  const EventOffstageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Event $index"),
            Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 15, 0),
                child: Text("Time $index")),
            Text("Stage $index"),
          ],
        );
      },
      separatorBuilder: (ctx, index) {
        return Divider();
      },
      itemCount: 10,
    );
  }
}
