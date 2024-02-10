import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'periode.freezed.dart';
part 'periode.g.dart';

	// "id": 19,
	// "code": "M_S1",
	// "libelleLongLt": "Semestre 1",
	// "libelleLongAr": "السداسي 1",
	// "libelleCourtLt": null,
	// "libelleCourtAr": null,
	// "rang": 1,
	// "credit": 0,
	// "refCodePeriodicite": null,
	// "rangNiveau": 4,
	// "refCodePeriode": null,
	// "libelleLongFrNiveau": "Master 1",
	// "libelleLongFrCycle": "Master",
	// "ncPeriodeId": null,
	// "ncPeriodeCode": null,
	// "ncPeriodeLibelle": null
@freezed
@Collection(ignore: {'copyWith'})
class Periode with _$Periode {
  const Periode._();
  Id get id_ => id;
  const factory Periode({
    required int id,
    required String code,
    required String libelleLongLt,
    required String libelleLongAr,
    String? libelleCourtLt,
    String? libelleCourtAr,
    required int rang,
    required int credit,
    String? refCodePeriodicite,
    required int rangNiveau,
    String? refCodePeriode,
    required String libelleLongFrNiveau,
    required String libelleLongFrCycle,
    String? ncPeriodeId,
    String? ncPeriodeCode,
    String? ncPeriodeLibelle,
  }) = _Periode;

  factory Periode.fromJson(Map<String, dynamic> json) => _$PeriodeFromJson(json);
}