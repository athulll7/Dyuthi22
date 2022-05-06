class ScoreModel {
  String? department;
  String? points;

  ScoreModel({this.department, this.points});

  factory ScoreModel.fromJson(dynamic json) {
    return ScoreModel(
        department: "${json['department']}", points: "${json['points']}");
  }

  Map toJson() => {
        "department": department,
        "points": points,
      };
}
