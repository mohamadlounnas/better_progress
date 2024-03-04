


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

/// [String] to [double] serializer
class StringToDoubleSerializer implements JsonConverter<double, String> {
  const StringToDoubleSerializer();

  @override
  double fromJson(String json) {
    return double.parse(json);
  }

  @override
  String toJson(double object) {
    return object.toString();
  }
}