import 'package:flutter/material.dart';

class ResultDisplay extends StatefulWidget {
  final String event;

  final String name1;
  final String department1;
  final String point1;

  final String name2;
  final String department2;
  final String point2;

  final String name3;
  final String department3;
  final String point3;

  const ResultDisplay(
      {Key? key,
      required this.event,
      required this.name1,
      required this.department1,
      required this.point1,
      required this.name2,
      required this.department2,
      required this.point2,
      required this.name3,
      required this.department3,
      required this.point3})
      : super(key: key);

  @override
  State<ResultDisplay> createState() => _ResultDisplayState();
}

class _ResultDisplayState extends State<ResultDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text("${widget.event}"),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Position"),
              Text("Name"),
              Text("Department"),
              Text("Points")
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Text("1st"),
              ),
              Text("${widget.name1}"),
              Text("${widget.department1}"),
              Text("${widget.point1}")
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Text("2nd"),
              ),
              Text("${widget.name2}"),
              Text("${widget.department2}"),
              Text("${widget.point2}"),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Text("3rd"),
              ),
              Text("${widget.name3}"),
              Text("${widget.department3}"),
              Text("${widget.point3}"),
            ],
          )
        ],
      ),
    );
  }
}
