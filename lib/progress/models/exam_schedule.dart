import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'exam_schedule.freezed.dart';
part 'exam_schedule.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class ExamSchedule with _$ExamSchedule {
  const ExamSchedule._();
  Id get id_ => id;
  const factory ExamSchedule({
    required int id,
    
  }) = _ExamSchedule;

  factory ExamSchedule.fromJson(Map<String, dynamic> json) => _$ExamScheduleFromJson(json);
}