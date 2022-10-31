import 'dart:convert';

class Activity {
  Activity({
    this.id,
    this.date,
    this.createdAt,
    this.updatedAt,
    this.timeSlot,
    this.startsAt,
    this.userId,
    this.projectId,
    this.taskId,
    this.keyboard,
    this.overall,
    this.tracked,
    this.inputTracked,
    this.tracksInput,
    this.billable,
    this.paid,
    this.clientInvoiced,
    this.teamInvoiced,
    this.immutable,
    this.timesheetId,
    this.timesheetLocked,
    this.timeType,
    this.client,
  });

  int? id;
  String? date;
  String? createdAt;
  String? updatedAt;
  String? timeSlot;
  String? startsAt;
  int? userId;
  int? projectId;
  int? taskId;
  int? keyboard;
  int? overall;
  int? tracked;
  int? inputTracked;
  bool? tracksInput;
  bool? billable;
  bool? paid;
  bool? clientInvoiced;
  bool? teamInvoiced;
  bool? immutable;
  int? timesheetId;
  bool? timesheetLocked;
  String? timeType;
  String? client;

  factory Activity.fromJson(String str) => Activity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Activity.fromMap(Map<String, dynamic> json) => Activity(
        id: json["id"],
        date: json["date"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        timeSlot: json["time_slot"],
        startsAt: json["starts_at"],
        userId: json["user_id"],
        projectId: json["project_id"],
        taskId: json["task_id"],
        keyboard: json["keyboard"],
        overall: json["overall"],
        tracked: json["tracked"],
        inputTracked: json["input_tracked"],
        tracksInput: json["tracks_input"],
        billable: json["billable"],
        paid: json["paid"],
        clientInvoiced: json["client_invoiced"],
        teamInvoiced: json["team_invoiced"],
        immutable: json["immutable"],
        timesheetId: json["timesheet_id"],
        timesheetLocked: json["timesheet_locked"],
        timeType: json["time_type"],
        client: json["client"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "date": date,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "time_slot": timeSlot,
        "starts_at": startsAt,
        "user_id": userId,
        "project_id": projectId,
        "task_id": taskId,
        "keyboard": keyboard,
        "overall": overall,
        "tracked": tracked,
        "input_tracked": inputTracked,
        "tracks_input": tracksInput,
        "billable": billable,
        "paid": paid,
        "client_invoiced": clientInvoiced,
        "team_invoiced": teamInvoiced,
        "immutable": immutable,
        "timesheet_id": timesheetId,
        "timesheet_locked": timesheetLocked,
        "time_type": timeType,
        "client": client,
      };
}
