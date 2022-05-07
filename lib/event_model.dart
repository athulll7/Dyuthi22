import 'dart:ffi';

import 'package:flutter/material.dart';

class EventModel {
  final String events;
  final String time;
  final String stage;

  const EventModel(
      {required this.events, required this.time, required this.stage});

  static EventModel fromJson(json) => EventModel(
      events: json['events'], time: json['time'], stage: json['stage']);
}
