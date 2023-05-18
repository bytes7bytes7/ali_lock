import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../dto/locker_info_response/locker_info_response.dart';
import '../../features/my_lockers/domain/entities/locker/locker.dart';
import '../../mappers/locker_dto_to_locker_mapper.dart';
import '../interfaces/locker_repository.dart';

@test
@Singleton(as: LockerRepository)
class TestLockerRepository implements LockerRepository {
  @override
  Future<List<Locker>> loadMyLockers() {
    return Future.delayed(const Duration(seconds: 2), () {
      return const [
        Locker(
          id: 1,
          code: '1234',
          title: 'Some lock',
          isLocked: false,
        ),
        Locker(
          id: 3,
          code: '45678854',
          title: 'Some another lock',
          isLocked: true,
        ),
      ];
    });
  }
}

@injectable
class LockerDataSource {
  const LockerDataSource(this._dio);

  final Dio _dio;

  Future<LockerInfoResponse> getLockerInfo() async {
    final response = await _dio.get(
      'https://my-json-server.typicode.com/ozon671game/demo/db',
    );

    if (response.statusCode != 200) {
      throw Exception('Can not get locker info');
    }

    return LockerInfoResponse.fromJson(response.data);
  }
}

@prod
@Singleton(as: LockerRepository)
class ProdLockerRepository implements LockerRepository {
  const ProdLockerRepository(
    this._lockerDataSource,
    this._lockerDTOToLockerMapper,
  );

  final LockerDataSource _lockerDataSource;
  final LockerDTOToLockerMapper _lockerDTOToLockerMapper;

  @override
  Future<List<Locker>> loadMyLockers() async {
    final result = await _lockerDataSource.getLockerInfo();

    return result.lockers.map(_lockerDTOToLockerMapper.map).toList();
  }
}
