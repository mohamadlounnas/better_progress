import 'package:freezed_annotation/freezed_annotation.dart';

import '../converters.dart';

part 'bac_info.freezed.dart';
part 'bac_info.g.dart';

    // "id": 320291382020,
    // "uuid": "f8ad6837-5b8e-4a51-9642-802c4bec3f3e",
    // "nin": "202032029138",
    // "matricule": "32029138",
    // "nomAr": "بن سلطانة",
    // "prenomAr": "أبوبكر أيمن",
    // "nomFr": "بن سلطانة",
    // "prenomFr": "أبوبكر أيمن",
    // "dateNaissance": "2003-02-05T00:00:00.000+01:00",
    // "moyenneBac": "13.13",
    // "refCodeWilayaBac": "09",
    // "refCodeSerieBac": "N04",
    // "libelleSerieBac": "MATHEMATIQUES",
    // "anneeBac": "2020"


@freezed
class BacInfo with _$BacInfo {

  factory BacInfo({
    required int id,
    required String uuid,
    required String nin,
    required String matricule,
    required String nomAr,
    required String prenomAr,
    required String nomFr,
    required String prenomFr,
    @DateTimeSerializer()
    required DateTime dateNaissance,
    @StringToDoubleSerializer()
    required double moyenneBac,
    required String refCodeWilayaBac,
    required String refCodeSerieBac,
    required String libelleSerieBac,
    required String anneeBac,
  }) = _BacInfo;

  factory BacInfo.fromJson(Map<String, dynamic> json) => _$BacInfoFromJson(json);
}