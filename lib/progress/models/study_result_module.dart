import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_result_module.freezed.dart';
part 'study_result_module.g.dart';

@freezed
class StudyResultModule with _$StudyResultModule {

  factory StudyResultModule({
    required int id,
    required int bilanUeId,
    required int bilanSessionId,
    required int rattachementMcId,
    required String mcLibelleFr,
    required String mcLibelleAr,
    required String mcCode,
    required double coefficient,
    required double credit,
    required double creditObtenu,
    required double moyenneGenerale,
  }) = _StudyResultModule;

  factory StudyResultModule.fromJson(Map<String, dynamic> json) => _$StudyResultModuleFromJson(json);
}