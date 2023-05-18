import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/typedef.dart';

part 'locker.freezed.dart';

part 'locker.g.dart';

@freezed
class Locker with _$Locker {
  const factory Locker({
    required int id,
    required String code,
    required String title,
    @JsonKey(name: 'is_lock') required bool isLocked,
  }) = _Locker;

  factory Locker.fromJson(JsonMap json) => _$LockerFromJson(json);
}
