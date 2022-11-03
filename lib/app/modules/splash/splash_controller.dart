import 'package:get/get.dart';
import 'package:mycatat/app/modules/wrapper/wrapper_binding.dart';
import 'package:mycatat/app/modules/wrapper/wrapper_view.dart';

class SplashController extends GetxController {
  funNextToWrapperView() {
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAll(
        () => const WrapperView(),
        binding: WrapperBinding(),
      );
    });
  }
}
