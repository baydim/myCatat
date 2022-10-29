import 'package:flutter/material.dart';

class CashierView extends StatefulWidget {
  const CashierView({Key? key}) : super(key: key);

  @override
  State<CashierView> createState() => _CashierViewState();
}

class _CashierViewState extends State<CashierView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'CashierView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
