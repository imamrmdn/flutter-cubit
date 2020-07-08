import 'package:cubit/cubit.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  void increment(int value) {
    emit((state is CounterCubitInitial)
        ? CounterCubitInitial((state as CounterCubitInitial).value + value)
        : CounterCubitInitial(0));
  }

  void decrement(int value) {
    emit((state is CounterCubitInitial)
        ? CounterCubitInitial(
            (state as CounterCubitInitial).value > 0
                ? (state as CounterCubitInitial).value - value
                : (state as CounterCubitInitial).value - 0,
          )
        : CounterCubitInitial(0));
  }
}
