import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  String toDisplay() {
    return DateFormat("d MMM y HH:mm").format(this);
  }
}
