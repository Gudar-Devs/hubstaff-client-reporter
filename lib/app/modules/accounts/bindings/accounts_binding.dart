import 'package:get/get.dart';

import '../controllers/controller.dart';

class AccountsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountsController>(
      () => AccountsController(),
    );
  }
}
