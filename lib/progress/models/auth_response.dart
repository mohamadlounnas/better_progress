import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../converters.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

/// [AuthResponse] is a class that holds the response from the server
/// when the user successfully login
@freezed
@Collection(ignore: {'copyWith'})
class AuthResponse with _$AuthResponse {
  const AuthResponse._();
  Id get id_ => Isar.autoIncrement;
  const factory AuthResponse({
    @DateTimeSerializer()
    required DateTime expirationDate,
    required String token,
    required String uuid,
    required int userId,
    required int idIndividu,
    required int etablissementId,
    required String userName,
  }) = _AuthResponse;

  /// first 4 characters of the username
  int get bacYear => int.parse(userName.substring(0, 4));
  /// rest of the username
  int get bacId => int.parse(userName.substring(4));

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);
}