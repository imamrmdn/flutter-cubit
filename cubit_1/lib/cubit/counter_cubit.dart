import 'package:cubit/cubit.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  //method add
  void increment() {
    return emit(state + 1);
  }

  //method mines
  void decrement() {
    return emit((state > 0) ? state - 1 : state);
  }
}
