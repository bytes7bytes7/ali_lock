import 'package:injectable/injectable.dart';

import '../features/my_lockers/application/view_models/locker_vm/locker_vm.dart';
import '../features/my_lockers/domain/entities/locker/locker.dart';

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
