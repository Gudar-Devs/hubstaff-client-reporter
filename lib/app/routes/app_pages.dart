import 'package:get/get.dart';

import '../modules/accounts/bindings/accounts_binding.dart';
import '../modules/accounts/views/accounts_view.dart';
import '../modules/add-accounts/bindings/add_accounts_binding.dart';
import '../modules/add-accounts/views/add_accounts_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ACCOUNTS;

  static final routes = [
    GetPage(
      name: _Paths.ACCOUNTS,
      page: () => AccountsView(),
      binding: AccountsBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ACCOUNTS,
      page: () => AddAccountsView(),
      binding: AddAccountsBinding(),
    ),
  ];
}
