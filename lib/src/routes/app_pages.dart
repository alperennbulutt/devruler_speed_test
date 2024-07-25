import 'package:get/get.dart';
import 'package:speedtest/src/view/home/home_view.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
    ),
  ];
}

abstract class Routes {
  static const HOME = _Paths.HOME;
  static const DETAILS = _Paths.DETAILS;
}

abstract class _Paths {
  static const HOME = '/home';
  static const DETAILS = '/details';
}
