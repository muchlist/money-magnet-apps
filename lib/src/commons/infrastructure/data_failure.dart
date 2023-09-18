import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_failure.freezed.dart';

// funion
// ptf
// flutter pub run build_runner watch --delete-conflicting-outputs

@freezed
class DataFailure with _$DataFailure {
  const DataFailure._();
  const factory DataFailure.server([String? message]) = _Server;
  const factory DataFailure.storage() = _Storage;
}
