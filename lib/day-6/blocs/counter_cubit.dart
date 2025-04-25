import 'package:erwan_kurnia/day-6/blocs/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState());

  void increment() {
    emit(state.copyWith(
      counter1: state.counter1 + 1,
    ));
  }
  
  void increment2() {
    emit(state.copyWith(
      counter2: state.counter2 + 1,
    ));
  }
  

  void decrement() => emit(state.copyWith(
    counter1: state.counter1 - 1,
  ));

  void decrement2() => emit(state.copyWith(
    counter2: state.counter2 - 1,
  ));

  void reset() => emit(state.copyWith(
    counter1: state.counter1 + 1,
  ));

  void reset2() => emit(state.copyWith(
    counter2: state.counter2 + 1,
  ));

}