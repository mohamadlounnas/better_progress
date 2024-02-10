


import 'package:freezed_annotation/freezed_annotation.dart';

/// [DateTime] serializer
class DateTimeSerializer implements JsonConverter<DateTime, String> {
  const DateTimeSerializer();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime object) {
    return object.toIso8601String();
  }
}