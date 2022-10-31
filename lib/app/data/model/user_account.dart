// To parse this JSON data, do
//
//     final user = userFromMap(jsonString);

import 'dart:convert';

class HubStaffUser {
  HubStaffUser({
    required this.user,
  });

  UserClass user;

  factory HubStaffUser.fromJson(String str) => HubStaffUser.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HubStaffUser.fromMap(Map<String, dynamic> json) => HubStaffUser(
        user: UserClass.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "user": user.toMap(),
      };
}

class UserClass {
  UserClass({
    this.id,
    this.name,
    this.email,
    this.timeZone,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  String? email;
  String? timeZone;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory UserClass.fromJson(String str) => UserClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserClass.fromMap(Map<String, dynamic> json) => UserClass(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        timeZone: json["time_zone"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "time_zone": timeZone,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
