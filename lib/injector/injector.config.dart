// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ali_lock/features/my_lockers/application/blocs/my_lockers/my_lockers_bloc.dart'
    as _i8;
import 'package:ali_lock/features/my_lockers/infrastructure/modules/dio_module.dart'
    as _i11;
import 'package:ali_lock/mappers/locker_dto_to_locker_mapper.dart' as _i4;
import 'package:ali_lock/mappers/locker_to_locker_vm_mapper.dart' as _i7;
import 'package:ali_lock/mappers/mappers.dart' as _i10;
import 'package:ali_lock/repositories/impl/locker_repository.dart' as _i5;
import 'package:ali_lock/repositories/interfaces/interfaces.dart' as _i9;
import 'package:ali_lock/repositories/interfaces/locker_repository.dart' as _i6;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _test = 'test';
const String _prod = 'prod';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioModule = _$DioModule();
  gh.singleton<_i3.Dio>(dioModule.dio);
  gh.singleton<_i4.LockerDTOToLockerMapper>(_i4.LockerDTOToLockerMapper());
  gh.factory<_i5.LockerDataSource>(() => _i5.LockerDataSource(gh<_i3.Dio>()));
  gh.singleton<_i6.LockerRepository>(
    _i5.TestLockerRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i6.LockerRepository>(
    _i5.ProdLockerRepository(
      gh<_i5.LockerDataSource>(),
      gh<_i4.LockerDTOToLockerMapper>(),
    ),
    registerFor: {_prod},
  );
  gh.singleton<_i7.LockerToLockerVMMapper>(_i7.LockerToLockerVMMapper());
  gh.factory<_i8.MyLockersBloc>(() => _i8.MyLockersBloc(
        gh<_i9.LockerRepository>(),
        gh<_i10.LockerToLockerVMMapper>(),
      ));
  return getIt;
}

class _$DioModule extends _i11.DioModule {}
