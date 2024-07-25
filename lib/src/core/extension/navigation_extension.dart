import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension NavigationExtension on GetPageRoute {
  toNamed(String routeName) {
    return Get.toNamed(routeName);
  }

  goTo(Widget route) {
    return Get.to(route);
  }

  offNamed(String routeName) {
    return Get.offNamed(routeName);
  }

  off(Widget route) {
    return Get.off(route);
  }

  offAllNamed(String routeName) {
    return Get.offAllNamed(routeName);
  }

  offAll(Widget route) {
    return Get.offAll(route);
  }
}
