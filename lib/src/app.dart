import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedtest/src/controller/app_controller.dart';
import 'package:speedtest/src/core/extension/string_extension.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (AppController controller) {
      if (controller.isLoading.value) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Scaffold(
          body: _body(),
        );
      }
    });
  }

  Widget _body() {
    return GetBuilder(builder: (AppController controller) {
      if (controller.isLoading.value) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              "Speed Test".titleLarge(),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                color: controller.isTapped.value ? Colors.blue : Colors.red,
                height: controller.isExpanded.value ? 200.0 : 100.0,
                width: controller.isExpanded.value ? 200.0 : 100.0,
                padding: controller.isTapped.value ? const EdgeInsets.all(20.0) : EdgeInsets.zero,
                child: GestureDetector(
                  onTap: () {
                    controller.isTapped.value = !controller.isTapped.value;
                    controller.isExpanded.value = !controller.isExpanded.value;
                  },
                  child: const Center(
                    child: Text(
                      'Tap me!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
    });
  }
}
