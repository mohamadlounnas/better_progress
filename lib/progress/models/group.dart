import 'package:better_progress/progress/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';
part 'group.g.dart';
    // {
    //     "id": 10851480,
    //     "groupePedagogiqueId": 221354,
    //     "nomGroupePedagogique": "Section 1",
    //     "dateAffectation": "2021-02-25T00:00:00.000+01:00",
    //     "periodeId": 14,
    //     "periodeCode": "S5",
    //     "periodeLibelleLongLt": "Semestre 5"
    // },
@freezed
class Group with _$Group {

  factory Group({
    required int id,
    required int groupePedagogiqueId,
    required String nomGroupePedagogique,
    @DateTimeSerializer()
    required DateTime dateAffectation,
    required int periodeId,
    required String periodeCode,
    required String periodeLibelleLongLt,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}