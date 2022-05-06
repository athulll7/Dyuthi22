import 'package:flutter/material.dart';

class EventOnstageList2 extends StatelessWidget {
  const EventOnstageList2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Event $index"),
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 40, 0),
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
