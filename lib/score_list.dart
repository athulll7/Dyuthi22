import 'package:flutter/material.dart';

class ScoreList extends StatelessWidget {
  const ScoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Department $index"),
            Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Text("Score $index")),
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
