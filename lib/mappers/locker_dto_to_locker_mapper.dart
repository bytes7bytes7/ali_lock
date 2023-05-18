import 'package:injectable/injectable.dart';

import '../dto/locker_dto/locker_dto.dart';
import '../features/my_lockers/domain/entities/locker/locker.dart';

@singleton
class LockerDTOToLockerMapper {
  const LockerDTOToLockerMapper();

  Locker map(LockerDTO lockerDTO) {
    return Locker(
      id: lockerDTO.id,
      code: lockerDTO.code,
      title: lockerDTO.title,
      isLocked: lockerDTO.isLocked,
    );
  }
}
