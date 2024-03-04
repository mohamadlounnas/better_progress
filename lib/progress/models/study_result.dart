import 'package:better_progress/progress/models/study_result_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_result.freezed.dart';
part 'study_result.g.dart';
 
 @freezed
class StudyResult with _$StudyResult {

  factory StudyResult({
    required int id,
    required int type,
    required int periodeId,
    required String periodeLibelleFr,
    required String periodeLibelleAr,
    required List<StudyResultGroup> bilanUes,
    required double moyenne,
    required double moyenneSn,
    required double credit,
    required double creditObtenu,
    required double creditAcquis,
    required bool annuel,
    required String cycleLibelleLongLt,
    required String niveauCode,
    required int niveauRang,
    required String niveauLibelleLongLt,
    required String niveauLibelleLongAr,
    required int totalAquis,
    required int effectif,
    required double coefficient,
  }) = _StudyResult;

  factory StudyResult.fromJson(Map<String, dynamic> json) => _$StudyResultFromJson(json);
}