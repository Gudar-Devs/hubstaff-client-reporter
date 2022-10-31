import '../data/model/time_activity.dart';

int sumActivitiesEntries(List<Activity> timeActivities) {
  int timeActivitiesTotal;

  timeActivitiesTotal =
      timeActivities.map((e) => e.tracked!).reduce((a, b) => a + b);

  return timeActivitiesTotal;
}
