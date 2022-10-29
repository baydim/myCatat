// To parse this JSON data, do
//
//     final modelListKasir = modelListKasirFromJson(jsonString);

import 'dart:convert';

List<ModelListKasir> modelListKasirFromJson(String str) =>
    List<ModelListKasir>.from(
        json.decode(str).map((x) => ModelListKasir.fromJson(x)));

String modelListKasirToJson(List<ModelListKasir> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelListKasir {
  ModelListKasir({
    this.id,
    this.nama,
    this.stock,
    this.harga,
    this.createdAt,
    this.updatedAt,
    this.qty,
  });

  int? id;
  String? nama;
  int? stock;
  int? qty;
  int? harga;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory ModelListKasir.fromJson(Map<String, dynamic> json) => ModelListKasir(
        id: json["id"],
        nama: json["nama"],
        stock: json["stock"],
        qty: json["qty"],
        harga: json["harga"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "stock": stock,
        "qty": qty,
        "harga": harga,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
