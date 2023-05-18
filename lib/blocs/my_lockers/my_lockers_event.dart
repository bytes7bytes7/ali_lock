part of 'my_lockers_bloc.dart';

abstract class MyLockersEvent extends Equatable {
  const MyLockersEvent();

  @override
  List<Object?> get props => [];
}

class LoadDataMyLockersEvent extends MyLockersEvent {
  const LoadDataMyLockersEvent();
}

class ChangeLockMyLockersEvent extends MyLockersEvent {
  const ChangeLockMyLockersEvent({
    required this.id,
    required this.isLocked,
  });

  final String id;
  final bool isLocked;

  @override
  List<Object?> get props => [id, isLocked];
}

// event for adding new locker
class AddLockerMyLockersEvent extends MyLockersEvent {
  const AddLockerMyLockersEvent();
}
