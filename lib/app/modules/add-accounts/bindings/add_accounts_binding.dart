import 'package:get/get.dart';

import '../controllers/add_accounts_controller.dart';

class AddAccountsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAccountsController>(
      () => AddAccountsController(),
    );
  }
}
