import 'dart:developer';

import 'package:get/get.dart';
import 'package:mycatat/app/modules/cashier/models/model_list_kasir.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DB extends GetxService {
  SharedPreferences? _prefs;

  Future<List<ModelListKasir>?> getDataListCashier() async {
    log('getDataListCashier');
    _prefs = await SharedPreferences.getInstance();
    final data = _prefs!.getString('dataCashier');
    if (data != null) {
      log('dataCashier: $data');
      return modelListKasirFromJson(data);
    } else {
      log('dataCashier: null');
      return [];
    }
  }

  Future<List<ModelListKasir>?> saveDataListCashier(
      {List<ModelListKasir>? data}) async {
    log('saveDataListCashier');

    _prefs = await SharedPreferences.getInstance();
    var response =
        await _prefs!.setString('dataCashier', modelListKasirToJson(data!));
    if (response) {
      log('saveDataListCashier: success');
      var data = _prefs!.getString('dataCashier');
      return modelListKasirFromJson(data!);
    } else {
      log('saveDataListCashier: failed');
      return [];
    }
  }

  @override
  void onInit() {
    log('onInit DB');
    super.onInit();
  }
}

var kasir = [
  {
    "id": 1,
    "nama": "Kasir 1",
    "stock": 1,
    "harga": 10000,
    "created_at": "2021-08-01T00:00:00.000000Z",
    "updated_at": "2021-08-01T00:00:00.000000Z"
  }
];

var kasirHistory = [
  {
    "nameCustomer": "Customer 1",
    "total": 10000,
    "created_at": "2021-08-01T00:00:00.000000Z",
    "list_product": [
      {
        "id": 1,
        "nama": "Kasir 1",
        "qty": 1,
        "harga": 10000,
        "created_at": "2021-08-01T00:00:00.000000Z",
        "updated_at": "2021-08-01T00:00:00.000000Z"
      }
    ]
  }
];

var catatan = [
  {
    "name": "Kasir 1",
    "catatan": "Catatan 1",
  },
];
