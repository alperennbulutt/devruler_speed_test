import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedtest/src/controller/app_controller.dart';

class DefaultView extends StatelessWidget {
  const DefaultView({super.key, this.appbar, this.body, this.errorWidget, this.initState});

  final AppBar? appbar;
  final Widget? body;
  final Widget? errorWidget;
  final Function(GetBuilderState<AppController>)? initState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar ?? AppBar(),
      body: GetBuilder(
        init: AppController(),
        didChangeDependencies: (controller) {
          controller.controller?.onClose();
        },
        initState: initState ?? (controller) {},
        autoRemove: true,
        dispose: (controller) {
          controller.controller?.dispose();
        },
        builder: (controller) {
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (controller.error.value) {
            return Center(
              child: errorWidget ?? const Text('Error'),
            );
          } else {
            return Scaffold(
              body: body ?? const SizedBox(),
            );
          }
        },
      ),
    );
  }
}
