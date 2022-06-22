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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(columns: [
              DataColumn(label: Text("Position")),
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Department")),
              DataColumn(label: Text("Points")),
            ], rows: <DataRow>[
              DataRow(cells: <DataCell>[
                DataCell(Text("1st")),
                DataCell(Text("${widget.name1}")),
                DataCell(Text("${widget.department1}")),
                DataCell(Text("${widget.point1}"))
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text("2nd")),
                DataCell(Text("${widget.name2}")),
                DataCell(Text("${widget.department2}")),
                DataCell(Text("${widget.point2}"))
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text("3rd")),
                DataCell(Text("${widget.name3}")),
                DataCell(Text("${widget.department3}")),
                DataCell(Text("${widget.point3}"))
              ]),
            ]),
          )
        ],
      ),
    );
  }
}
