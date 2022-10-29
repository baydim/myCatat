import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WrapperController extends GetxController {
  final indexSelected = 0.obs;
  PageController pageController = PageController();

  onChangePage(int index) {
    indexSelected.value = index;
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  void onInit() {
    log("WrapperController onInit");
    super.onInit();
  }
}
