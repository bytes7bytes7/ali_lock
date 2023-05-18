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
  const ChangeLockMyLockersEvent();
}

class AddLockerMyLockersEvent extends MyLockersEvent {
  const AddLockerMyLockersEvent();
}
