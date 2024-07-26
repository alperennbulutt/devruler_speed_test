import 'package:get/get.dart';

class AppController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool error = false.obs;

  final RxBool isTapped = false.obs;
  final RxBool isExpanded = false.obs;

  @override
  void onInit() {
    super.onInit();
    getData();
    reset();
  }

  @override
  void onClose() {
    super.onClose();
    reset();
  }

  @override
  void dispose() {
    super.dispose();
    reset();
  }

  _changeLoading() {
    isLoading.value = !isLoading.value;
    update();
  }

  void setLoading(bool value) {
    isLoading.value = value;
  }

  void setError(bool value) {
    error.value = value;
  }

  void reset() {
    isLoading.value = false;
    error.value = false;
  }

  getData() async {
    await Future.delayed(const Duration(seconds: 2), () {
      _changeLoading();
    });

    _changeLoading();
  }
}
