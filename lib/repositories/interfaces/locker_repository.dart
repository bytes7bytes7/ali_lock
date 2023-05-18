import '../../domain/entities/entities.dart';

abstract class LockerRepository {
  Future<List<Locker>> loadMyLockers();
}
