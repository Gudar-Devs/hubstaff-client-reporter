import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class PopUpDelete extends StatelessWidget {
  const PopUpDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Delete hubstaff member'),),
      body: Center(
        child: TextButton(onPressed: () => Get.defaultDialog(
                title: "Delete Account",
                onConfirm: () => Get.back(),
                textConfirm: 'Confirm',
                textCancel: 'Cancel',
                confirmTextColor: Colors.black,
                content: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 25.0, bottom: 10, left: 15),
                      child:  Text(
                        "Are you sure you want to delete this account?",
              
                    ),
                    ),
                  ],
                ),
              ) , child: Text('Delete Account')),
      ),
    );
  }
}
