import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycatat/app/modules/note/note_view.dart';
import 'package:mycatat/app/modules/wrapper/wrapper_controller.dart';

import '../cashier/cashier_view.dart';

class WrapperView extends StatefulWidget {
  const WrapperView({Key? key}) : super(key: key);

  @override
  State<WrapperView> createState() => _WrapperViewState();
}

class _WrapperViewState extends State<WrapperView> {
  @override
  Widget build(BuildContext context) {
    return GetX<WrapperController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("MyCatat"),
        ),
        body: PageView(
          controller: _.pageController,
          onPageChanged: _.onChangePage,
          children: [
            CashierView(),
            NoteView(),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _.indexSelected.value,
          onDestinationSelected: _.onChangePage,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_filled),
              label: "Kasir",
            ),
            NavigationDestination(
              icon: Icon(Icons.note),
              label: "Catatan",
            ),
          ],
        ),
      );
    });
  }
}
