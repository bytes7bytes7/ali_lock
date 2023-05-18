import 'package:injectable/injectable.dart';

import '../domain/entities/locker/locker.dart';
import '../view_models/locker_vm/locker_vm.dart';

@singleton
class LockerToLockerVMMapper {
  const LockerToLockerVMMapper();

  LockerVM map(Locker locker) {
    return LockerVM(
      id: '${locker.id}',
      code: locker.code,
      title: locker.title,
      isLocked: locker.isLocked,
    );
  }
}
