import 'package:riverpod/riverpod.dart';

class CounterRiverPod extends StateNotifier<int> {
  CounterRiverPod() : super(0);
  void incremment() {
    state++;
  }

  void reset() {
    state = 0;
  }

  void decremment() {
    if (state > 0) {
      state--;
    }
  }

  void inccremmentByTen() {
    state + 10;
  }
}
