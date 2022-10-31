import 'dart:io';
import 'package:csv/csv.dart';
import 'package:path_provider/path_provider.dart';

Future<void> generateCSVAndView() async {
  // List<BaseballModel> data = await _databaseService.list().first;
  List<List<String>> csvData = [
    // headers
    <String>['Name', 'Coach', 'players'],
    // data
    // ...data.map((item) => [item.name, item.coach, item.players.toString()]),
  ];

  String csv = const ListToCsvConverter().convert(csvData);

  final String dir = (await getApplicationDocumentsDirectory()).path;
  final String path = '$dir/test.csv';

  // create file
  final File file = File(path);
  // Save csv string using default configuration
  // , as field separator
  // " as text delimiter and
  // \r\n as eol.
  if (!await file.exists()) {
    await file.create(recursive: true);
    file.writeAsStringSync(csv);
  }
  print('CSV --> $csv');
  print('Path --> $path');
}
