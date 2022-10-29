import 'package:get/get.dart';

import '../cashier/cashier_controller.dart';
import 'wrapper_controller.dart';

class WrapperBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WrapperController>(
      WrapperController(),
    );
    Get.put<CashierController>(
      CashierController(),
    );
  }
}
