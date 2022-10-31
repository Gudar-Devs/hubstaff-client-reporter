import 'package:get/get.dart';

import '../controllers/controller.dart';

class AddAccountsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAccountsController>(
      () => AddAccountsController(),
    );
  }
}
