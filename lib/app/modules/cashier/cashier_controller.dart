import 'dart:developer';

import 'package:get/get.dart';
import 'package:mycatat/app/core/DB/db.dart';
import 'package:mycatat/app/modules/cashier/models/model_list_kasir.dart';

class CashierController extends GetxController {
  DB db = DB();

  final RxList<ModelListKasir> dataCashier = RxList<ModelListKasir>();

  final RxList<ModelListKasir> dataSelectedUser = RxList<ModelListKasir>();

  funAddDataCashier(ModelListKasir data) async {
    log('funAddDataCashier');
    dataCashier.add(data);
    if (dataCashier.isNotEmpty) {
      dataCashier.value = (await db.saveDataListCashier(data: dataCashier))!;
    } else {
      dataCashier.value = (await db.saveDataListCashier(data: dataCashier))!;
    }
  }

  funDeleteItemCashier(int index) async {
    log('funDeleteItemCashier');
    dataCashier.value = (await db.getDataListCashier())!;
    if (dataCashier.isNotEmpty) {
      dataCashier.removeAt(index);
      await db.saveDataListCashier(data: dataCashier);
    }
  }

  funEditItemCashier(int index, ModelListKasir data) async {
    log('funEditItemCashier');
    dataCashier.value = (await db.getDataListCashier())!;
    if (dataCashier.isEmpty) {
      dataCashier[index] = data;
      await db.saveDataListCashier(data: dataCashier);
    }
  }

  @override
  Future<void> onInit() async {
    log('onInit CashierController');
    dataCashier.value = (await db.getDataListCashier()) ?? [];
    super.onInit();
  }
}
