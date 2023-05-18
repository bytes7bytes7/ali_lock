// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ali_lock/blocs/my_lockers/my_lockers_bloc.dart' as _i6;
import 'package:ali_lock/mappers/locker_to_locker_vm_mapper.dart' as _i5;
import 'package:ali_lock/repositories/impl/locker_repository.dart' as _i4;
import 'package:ali_lock/repositories/interfaces/locker_repository.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _test = 'test';

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
  gh.singleton<_i3.LockerRepository>(
    _i4.TestLockerRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i5.LockerToLockerVMMapper>(_i5.LockerToLockerVMMapper());
  gh.factory<_i6.MyLockersBloc>(() => _i6.MyLockersBloc(
        gh<_i3.LockerRepository>(),
        gh<_i5.LockerToLockerVMMapper>(),
      ));
  return getIt;
}
