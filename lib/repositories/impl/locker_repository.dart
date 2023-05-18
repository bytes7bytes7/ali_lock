import 'package:injectable/injectable.dart';

import '../../domain/entities/locker/locker.dart';
import '../interfaces/locker_repository.dart';

// TODO: add prod impl
@test
@Singleton(as: LockerRepository)
class TestLockerRepository implements LockerRepository {
  @override
  Future<List<Locker>> loadMyLockers() {
    return Future.delayed(const Duration(seconds: 2), () {
      return const [];
      // return const [
      //   Locker(
      //     id: 1,
      //     code: '1234',
      //     title: 'Some lock',
      //     isLocked: false,
      //   ),
      //   Locker(
      //     id: 3,
      //     code: '45678854',
      //     title: 'Some another lock',
      //     isLocked: true,
      //   ),
      // ];
    });
  }
}
