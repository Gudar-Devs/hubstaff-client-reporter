import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hubstaff_client_reporter/app/routes/app_pages.dart';

import '../../../widgets/add_account_form_field.dart';
import '../controllers/controller.dart';

class AddAccountsView extends GetView<AddAccountsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddAccountsView'),
        centerTitle: true,
      ),
      body: Form(
        child: Stack(
          children: [
            SafeArea(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                children: [
                  AddAccountFormField(
                    obcureText: false,
                    title: 'Personal access token',
                    label: 'AsXDS5d55dsDd32ssdf',
                    readOnly: false,
                    mandatory: true,
                  ),
                  const SizedBox(height: 120),
                ],
              ),
            ),
            const _SaveButton(),
          ],
        ),
      ),
    );
  }
}

class _SaveButton extends GetView<AddAccountsController> {
  const _SaveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
              ),
              width: 450,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('SAVE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))
                ],
              ),
            ),
          ),
        ));
  }
}
