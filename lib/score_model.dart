import 'dart:ffi';

class ScoreModel {
  final String department;
  final int points;

  const ScoreModel({required this.department, required this.points});

  static ScoreModel fromJson(json) =>
      ScoreModel(department: json['department'], points: json['points']);
}
