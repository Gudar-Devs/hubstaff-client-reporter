import 'package:get/get.dart';
import 'package:hubstaff_client_reporter/app/widgets/popup.dart';

import '../modules/accounts/bindings/accounts_binding.dart';
import '../modules/accounts/views/accounts_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = _Paths.POPUP;

  static final routes = [
    // GetPage(
    //   name: _Paths.ACCOUNTS,
    //   page: () => AccountsView(),
    //   binding: AccountsBinding(),
    // ),
    GetPage(
      name: _Paths.POPUP,
      page: () => PopUpDelete(),

    ),
  ];
}
