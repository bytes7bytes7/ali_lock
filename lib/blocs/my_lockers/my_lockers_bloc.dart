import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'my_lockers_event.dart';

part 'my_lockers_state.dart';

class MyLockersBloc extends Bloc<MyLockersEvent, MyLockersState> {
  MyLockersBloc() : super(const MyLockersState()) {
    on<MyLockersEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
