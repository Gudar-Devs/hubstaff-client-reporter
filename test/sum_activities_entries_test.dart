import 'package:flutter_test/flutter_test.dart';
import 'package:hubstaff_client_reporter/app/data/model/time_activity.dart';
import 'package:hubstaff_client_reporter/app/utils/sum-activities-entries.dart';

void main() {
  test(
    'Sum all time entries',
    () {
      List<Activity> timeActivities = [
        Activity(tracked: 2),
        Activity(tracked: 11),
        Activity(tracked: 14),
      ];

      int count = sumActivitiesEntries(timeActivities);

      expect(count, 27);
    },
  );
}
