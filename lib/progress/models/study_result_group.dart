import 'package:better_progress/progress/models/study_result_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_result_group.freezed.dart';
part 'study_result_group.g.dart';
@freezed
class StudyResultGroup with _$StudyResultGroup {

  factory StudyResultGroup({
    required int id,
    required int bilanSessionId,
    required int repartitionUeId,
    required String ueLibelleFr,
    required String ueCode,
    required String ueType,
    required double moyenne,
    required double coefficient,
    required double credit,
    required double creditObtenu,
    required double creditAcquis,
    required String ueNatureLcFr,
    required String ueNatureLcAr,
    required String ueNatureCode,
    required List<StudyResultModule> bilanMcs,
    required double ueNoteObtention,
    required bool ueAcquis,
    required int totalAquis,
    required int effectif,
  }) = _StudyResultGroup;

  factory StudyResultGroup.fromJson(Map<String, dynamic> json) => _$StudyResultGroupFromJson(json);
}