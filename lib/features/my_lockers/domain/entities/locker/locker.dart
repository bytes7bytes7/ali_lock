import 'package:freezed_annotation/freezed_annotation.dart';

part 'locker.freezed.dart';

@freezed
class Locker with _$Locker {
  const factory Locker({
    required int id,
    required String code,
    required String title,
    required bool isLocked,
  }) = _Locker;
}
