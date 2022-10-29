// To parse this JSON data, do
//
//     final modelListHistoryCashier = modelListHistoryCashierFromJson(jsonString);

import 'dart:convert';

List<ModelListHistoryCashier> modelListHistoryCashierFromJson(String str) =>
    List<ModelListHistoryCashier>.from(
        json.decode(str).map((x) => ModelListHistoryCashier.fromJson(x)));

String modelListHistoryCashierToJson(List<ModelListHistoryCashier> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelListHistoryCashier {
  ModelListHistoryCashier({
    this.nameCustomer,
    this.total,
    this.createdAt,
    this.listProduct,
  });

  String? nameCustomer;
  int? total;
  DateTime? createdAt;
  List<ListProduct>? listProduct;

  factory ModelListHistoryCashier.fromJson(Map<String, dynamic> json) =>
      ModelListHistoryCashier(
        nameCustomer: json["nameCustomer"],
        total: json["total"],
        createdAt: DateTime.parse(json["created_at"]),
        listProduct: List<ListProduct>.from(
            json["list_product"].map((x) => ListProduct.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nameCustomer": nameCustomer,
        "total": total,
        "created_at": createdAt!.toIso8601String(),
        "list_product": List<dynamic>.from(listProduct!.map((x) => x.toJson())),
      };
}

class ListProduct {
  ListProduct({
    this.id,
    this.nama,
    this.qty,
    this.harga,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? nama;
  int? qty;
  int? harga;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory ListProduct.fromJson(Map<String, dynamic> json) => ListProduct(
        id: json["id"],
        nama: json["nama"],
        qty: json["qty"],
        harga: json["harga"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "qty": qty,
        "harga": harga,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
