import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedtest/src/data/repository/repository.dart';
import 'package:speedtest/src/view/home/controller/home_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: GetBuilder(
        init: HomeController(Repository.instance),
        builder: (controller) {
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (controller.error.value) {
            return const Center(
              child: Text('Error'),
            );
          } else {
            return const Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [Text('Login')],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
