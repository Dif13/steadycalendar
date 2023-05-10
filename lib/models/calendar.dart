import 'package:json_annotation/json_annotation.dart';
import 'package:steadycalendar/config/constants.dart';
import 'package:steadycalendar/models/calendar_color.dart';
import 'package:steadycalendar/models/calendar_date.dart';
import 'calendar_dates_converter.dart';
import 'date_time_converter.dart';

part 'calendar.g.dart';

//! flutter хранит дату в отличном формате от Supabase
//! Это означает, что необходимо трансформировать дату при передаче сообщений
//! Наш кодогенератор не знает этих методов, поэтому напишем их
@JsonSerializable()
@CalendarDatesConverter()
@DateTimeConverter()
class Calendar {
  @JsonKey(includeIfNull: false)
  int? id;

  @JsonKey(name: 'user_id')
  String? userID;

  String name;

  @JsonKey(name: 'color', required: true)
  String colorHex;

  @JsonKey(name: 'backgloud_slug', required: true)
  String backgloudSlug;

  @JsonKey(name: 'calendar_dates', required: false, includeIfNull: false)
  CalendarDates? dates;

  CalendarColor get color => colors.firstWhere((e) => colorHex == e.hex);

  Calendar({
    this.id,
    this.userID,
    required this.name,
    required this.colorHex,
    required this.backgloudSlug,
    this.dates,
  });

  factory Calendar.blank() {
    return Calendar(
      name: 'Untitled',
      colorHex: colors.first.hex,
      backgloudSlug: 'darts@3x.png',
    );
  }

  factory Calendar.fromJson(Map<String, dynamic> json) =>
      _$CalendarFromJson(json);
  Map<String, dynamic> toJson() => _$CalendarToJson(this);
}
