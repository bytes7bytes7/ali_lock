import 'package:freezed_annotation/freezed_annotation.dart';

part 'locker_vm.freezed.dart';

@freezed
class LockerVM with _$LockerVM {
  const factory LockerVM({
    required String id,
    required String code,
    required String title,
    required bool isLocked,
  }) = _LockerVM;
}
