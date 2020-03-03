import 'package:intl/intl.dart';

String dateFormatted() {
  var date = new DateTime.now();
  var format = new DateFormat("EEE, MMM dd");
  return format.format(date);
}
