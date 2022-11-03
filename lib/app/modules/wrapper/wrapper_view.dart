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
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text("Kasir"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Catatan"),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("MyCatat"),
          actions: [
            IconButton(
              onPressed: () {
                _.changeToDarkTheme();
              },
              icon: Icon(!_.isDark.value ? Icons.dark_mode : Icons.light_mode),
            ),
          ],
        ),
        body: PageView(
          controller: _.pageController,
          onPageChanged: _.onChangePage,
          children: const [
            CashierView(),
            NoteView(),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _.indexSelected.value,
          onDestinationSelected: _.onChangePage,
          destinations: const [
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
