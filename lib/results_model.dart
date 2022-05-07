class ResultModel {
  final String event;
  final String first_name;
  final String first_dept;
  final String first_point;
  final String sec_name;
  final String sec_dept;
  final String sec_point;
  final String third_name;
  final String third_dept;
  final String third_point;

  const ResultModel(
      {required this.event,
      required this.first_dept,
      required this.first_name,
      required this.first_point,
      required this.sec_name,
      required this.sec_dept,
      required this.sec_point,
      required this.third_name,
      required this.third_dept,
      required this.third_point});

  static ResultModel fromJson(json) => ResultModel(
        event: json['event'],
        first_name: json['first_name'],
        first_dept: json['first_dept'],
        first_point: json['first_point'],
        sec_name: json['sec_name'],
        sec_dept: json['sec_dept'],
        sec_point: json['sec_point'],
        third_name: json['third_name'],
        third_dept: json['third_dept'],
        third_point: json['third_point'],
      );
}
