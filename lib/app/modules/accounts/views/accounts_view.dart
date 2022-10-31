import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hubstaff_client_reporter/app/routes/app_pages.dart';

import '../../../widgets/customCard.dart';
import '../controllers/controller.dart';

class AccountsView extends GetView<AccountsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Routes.ADD_ACCOUNTS);
        },
        child: Center(
          child: Icon(Icons.add),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Accounts list'),
        centerTitle: true,
      ),
      body: Center(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (_, int index) {
                return _AccountCard(userData: "ALFREDO");
              })),
    );
  }
}

class _AccountCard extends GetView<AccountsController> {
  String userData;
  _AccountCard({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: Text("userData"),
      subtitle: Text("userData"),
      colorCard: Colors.blue,
      iconCard: Icons.account_circle_outlined,
      iconColor: Colors.white,
      ontap: () async {
        // Get.toNamed(Routes.STEPONEFORM);
      },
    );
  }
}
