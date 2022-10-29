import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycatat/app/modules/cashier/cashier_controller.dart';

import 'models/model_list_kasir.dart';
import 'widget/widget_list_data_cashier.dart';

class CashierView extends StatefulWidget {
  const CashierView({Key? key}) : super(key: key);

  @override
  State<CashierView> createState() => _CashierViewState();
}

class _CashierViewState extends State<CashierView> {
  @override
  Widget build(BuildContext context) {
    return GetX<CashierController>(
      builder: (_) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  WidgetListDataCashier(
                    dataSelectedUser: _.dataCashier.value,
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _.funAddDataCashier(
                ModelListKasir(
                  nama: Random.secure().nextInt(100).toString(),
                  qty: Random.secure().nextInt(1000),
                  createdAt: DateTime.now(),
                  updatedAt: DateTime.now(),
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
