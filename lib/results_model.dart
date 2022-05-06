class ResultModel {
  late String? event;
  late String? position;
  late String? name;
  late String? department;

  ResultModel({this.event, this.position, this.name, this.department});

  factory ResultModel.fromJson(dynamic json) {
    return ResultModel(
      event: "${json['event']}",
      position: "${json['position']}",
      name: "${json['name']}",
      department: "${json['department']}",
    );
  }

  Map toJson() => {
        "event": event,
        "position": position,
        "name": name,
        "department": department,
      };

}
