part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterCubitInitial extends CounterState {
  final int value;

  CounterCubitInitial(this.value);
}
