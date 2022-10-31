import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:hubstaff_client_reporter/app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
        builder: ((context, child) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Hubstaff",
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
            )));
  }
}
