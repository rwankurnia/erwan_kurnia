import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter1;
  final int counter2;

  const CounterState({
    this.counter1 = 0, 
    this.counter2 = 0,
  });

  CounterState copyWith({
    int? counter1,
    int? counter2,
  }) {
    return CounterState(
      counter1: counter1 ?? this.counter1,
      counter2: counter2 ?? this.counter2,
    );
  }

  @override
  List<Object> get props => [counter1, counter2];
}