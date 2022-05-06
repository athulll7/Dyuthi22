import 'package:flutter/material.dart';

class ResultDisplay extends StatefulWidget {
  final String? event;

  final String? name1;
  final String? department1;

  final String? name2;
  final String? department2;

  final String? name3;
  final String? department3;

  const ResultDisplay(
      {Key? key,
      this.event,
      this.name1,
      this.department1,
      this.name2,
      this.department2,
      this.name3,
      this.department3})
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
            children: [Text("Position"), Text("Name"), Text("Department")],
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
              Text("${widget.department1}")
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
              Text("${widget.department2}")
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
              Text("${widget.department3}")
            ],
          )
        ],
      ),
    );
  }
}
