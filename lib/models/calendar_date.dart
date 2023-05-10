import 'dart:collection';
import 'package:intl/intl.dart';

typedef CalendarDate = DateTime;

typedef CalendarDates = HashMap<int, CalendarDate>;

const String CalendarDateFormat = 'yyyy-MM-dd';

String calendarDateToString(CalendarDate value) {
  return DateFormat(CalendarDateFormat).format(value);
}

CalendarDate stringToCalendarDate(String value) {
  //? Parse парсит дату используя локальное время, и стоит парсить его с тайм-зоной
  return DateTime.parse("$value 00:00:00Z");
}
