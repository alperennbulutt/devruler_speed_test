import 'package:get/get.dart';
import 'package:speedtest/src/data/repository/repository.dart';

class HomeController extends GetxController {
  final Repository repository;
  HomeController(this.repository);
  RxBool isLoading = false.obs;
  RxBool error = false.obs;
}
