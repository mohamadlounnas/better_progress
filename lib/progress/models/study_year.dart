import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_year.freezed.dart';
part 'study_year.g.dart';

@freezed
class StudyYear with _$StudyYear {
  const StudyYear._();
  const factory StudyYear({
    required int id,
    String? numeroInscription,
    int? anneeAcademiqueId,
    String? anneeAcademiqueCode,
    int? situationId,
    int? dossierEtudiantId,
    String? numeroMatricule,
    int? ouvertureOffreFormationId,
    String? refCodeCycle,
    String? refLibelleCycle,
    String? refLibelleCycleAr,
    int? ofIdDomaine,
    String? ofCodeDomaine,
    String? ofLlDomaine,
    String? ofLlDomaineArabe,
    int? ofIdFiliere,
    String? ofCodeFiliere,
    String? ofLlFiliereArabe,
    String? ofLlFiliere,
    int? ofIdSpecialite,
    String? ofCodeSpecialite,
    String? ofLlSpecialiteArabe,
    String? ofLlSpecialite,
    int? individuId,
    String? nin,
    String? individuNomArabe,
    String? individuNomLatin,
    String? individuPrenomArabe,
    String? individuPrenomLatin,
    String? individuDateNaissance,
    String? individuLieuNaissance,
    String? individuLieuNaissanceArabe,
    int? refEtablissementId,
    String? refCodeEtablissement,
    String? llEtablissementArabe,
    String? llEtablissementLatin,
    double? moyenneBac,
    double? lastMoyenne,
    String? photo,
    int? cycleId,
    String? cycleCode,
    String? cycleLibelleLongLt,
    int? niveauId,
    String? niveauCode,
    int? niveauRang,
    String? niveauLibelleLongLt,
    String? niveauLibelleLongAr,
  }) = _StudyYear;

  factory StudyYear.fromJson(Map<String, dynamic> json) => _$StudyYearFromJson(json);
}