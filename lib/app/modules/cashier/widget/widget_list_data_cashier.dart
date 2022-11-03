import 'package:flutter/material.dart';

import '../models/model_list_kasir.dart';

class WidgetListDataCashier extends StatefulWidget {
  const WidgetListDataCashier({Key? key, required this.dataSelectedUser})
      : super(key: key);
  final List<ModelListKasir> dataSelectedUser;

  @override
  State<WidgetListDataCashier> createState() => _WidgetListDataCashierState();
}

class _WidgetListDataCashierState extends State<WidgetListDataCashier> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("Pilih Produk"),
          trailing: const Icon(Icons.add),
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: 300,
                    child: ListView.builder(
                      itemCount: widget.dataSelectedUser.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(widget.dataSelectedUser[index].nama!),
                          trailing: Text(
                              widget.dataSelectedUser[index].qty.toString()),
                        );
                      },
                    ),
                  );
                });
          },
        ),
        for (var i = 0; i < widget.dataSelectedUser.length; i++)
          ListTile(
            title: Text(widget.dataSelectedUser[i].nama ?? "Belum Terisi"),
            trailing: Text(
              widget.dataSelectedUser[i].qty.toString(),
            ),
          ),
      ],
    );
  }
}
