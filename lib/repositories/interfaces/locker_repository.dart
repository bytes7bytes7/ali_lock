import '../../features/my_lockers/domain/entities/locker/locker.dart';

abstract class LockerRepository {
  Future<List<Locker>> loadMyLockers();
}
