part of 'my_lockers_bloc.dart';

class MyLockersState extends Equatable {
  const MyLockersState({
    this.isLoading = false,
    this.error = '',
    this.lockers = const [],
  });

  final bool isLoading;
  final String error;
  final List<LockerVM> lockers;

  MyLockersState copyWith({
    bool? isLoading,
    String? error = '',
    List<LockerVM>? lockers,
  }) {
    return MyLockersState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      lockers: lockers ?? this.lockers,
    );
  }

  @override
  List<Object?> get props => [
        isLoading,
        error,
        lockers,
      ];
}
