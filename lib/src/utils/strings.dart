import 'package:intl/intl.dart';

extension CurrencyFormatting on num {
  String toCurrencyString({String locale = 'id_ID', String symbol = 'Rp '}) {
    final currencyFormat =
        NumberFormat.currency(locale: locale, symbol: symbol, decimalDigits: 0);
    return currencyFormat.format(this);
  }
}
