import 'package:intl/intl.dart';

class StringExtension {
  static String getFormattedDate(DateTime date) {
    return DateFormat('dd/MM/yyyy | HH:mm').format(date);
  }

  static String getFormatMoney(int money) {
    return NumberFormat.currency(symbol: 'Rp. ').format(money);
  }
}
