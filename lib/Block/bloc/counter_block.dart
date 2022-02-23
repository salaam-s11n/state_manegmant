import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlock extends Cubit<int> {
  CounterBlock() : super(0);

  void incremment() {
    emit(state + 1);
  }

  void reset() {
    emit(state - state);
  }

  void inccremmentByTen() {
    emit(state + 10);

    // counter2.value = counter;
    // counter2.value = counter2.value + 10;
    // counter = counter2.value;
  }

  void decremment() {
    if (state > 0) {
      emit(state - 1);
    }
  }
}
