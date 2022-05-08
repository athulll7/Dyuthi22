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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text("Position",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Text("Name",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold)),
              ),
              Text("Department",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                child: Text("Points",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("1st", style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Text("${widget.name1}", style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Text("${widget.department1}",
                    style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Text("${widget.point1}", style: TextStyle(fontSize: 16)),
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("2nd", style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Text("${widget.name2}", style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Text("${widget.department2}",
                    style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Text("${widget.point2}", style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("3rd", style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Text("${widget.name3}", style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Text("${widget.department3}",
                    style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Text("${widget.point3}", style: TextStyle(fontSize: 16)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
