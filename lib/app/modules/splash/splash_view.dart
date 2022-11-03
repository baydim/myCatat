import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycatat/app/modules/splash/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.funNextToWrapperView();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("Is Splash"),
          ],
        ),
      ),
    );
  }
}
