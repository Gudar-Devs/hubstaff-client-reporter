import 'dart:convert';

class TimeReport {
  TimeReport({
    required this.developer,
    required this.totalHours,
  });

  String developer;
  double totalHours;

  factory TimeReport.fromJson(String str) =>
      TimeReport.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TimeReport.fromMap(Map<String, dynamic> json) => TimeReport(
        developer: json["developer"],
        totalHours: json["total_hours"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "developer": developer,
        "total_hours": totalHours,
      };
}
