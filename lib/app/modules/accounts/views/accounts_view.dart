import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/customCard.dart';
import '../controllers/accounts_controller.dart';

class AccountsView extends GetView<AccountsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
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
