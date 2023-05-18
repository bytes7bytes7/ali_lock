import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../mappers/locker_to_locker_vm_mapper.dart';
import '../../repositories/interfaces/locker_repository.dart';
import '../../view_models/locker_vm/locker_vm.dart';

part 'my_lockers_event.dart';

part 'my_lockers_state.dart';

@injectable
class MyLockersBloc extends Bloc<MyLockersEvent, MyLockersState> {
  MyLockersBloc(
    this._lockerRepository,
    this._lockerToLockerVMMapper,
  ) : super(const MyLockersState()) {
    on<LoadDataMyLockersEvent>(_loadData);
    on<ChangeLockMyLockersEvent>(_changeLock);
    on<AddLockerMyLockersEvent>(_addLocker);
  }

  final LockerRepository _lockerRepository;
  final LockerToLockerVMMapper _lockerToLockerVMMapper;

  Future<void> _loadData(
    LoadDataMyLockersEvent event,
    Emitter<MyLockersState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    try {
      final data = await _lockerRepository.loadMyLockers();

      emit(
        state.copyWith(
          isLoading: false,
          lockers: data.map(_lockerToLockerVMMapper.map).toList(),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          error: 'Не удалось загрузить информацию',
        ),
      );

      emit(state.copyWith());
    }
  }

  Future<void> _changeLock(
    ChangeLockMyLockersEvent event,
    Emitter<MyLockersState> emit,
  ) async {
    final lockers = List.of(state.lockers);

    LockerVM? locker;
    int? index;
    final iterator = lockers.iterator..moveNext();
    for (var i = 0; i < lockers.length; i++) {
      final current = iterator.current;

      if (current.id == event.id) {
        locker = current;
        index = i;
        break;
      }

      iterator.moveNext();
    }

    if (locker == null || index == null) {
      emit(
        state.copyWith(
          error: 'Ошибка поиска',
        ),
      );

      emit(state.copyWith());

      return;
    }

    if (locker.isLocked == event.isLocked) {
      return;
    }

    final newLocker = locker.copyWith(
      isLocked: event.isLocked,
    );

    emit(
      state.copyWith(
        lockers: lockers..[index] = newLocker,
      ),
    );
  }

  Future<void> _addLocker(
    AddLockerMyLockersEvent event,
    Emitter<MyLockersState> emit,
  ) async {}
}
