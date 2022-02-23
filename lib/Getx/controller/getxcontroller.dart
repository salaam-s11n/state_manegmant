import 'package:get/get.dart';

class CounterGetx extends GetxController {
  int counter = 0;
  RxInt counter2 = 0.obs;
  void incremment() {
    counter++;
    counter2.value = counter;
    update();
  }

  void reset() {
    counter = 0;
    counter2.value = 0;
    update();
  }

  void decremment() {
    if (counter > 0) {
      counter2.value = counter;
      counter2.value--;
      counter = counter2.value;
      update();
    }
  }

  void inccremmentByTen() {
    counter2.value = counter;
    counter2.value = counter2.value + 10;
    counter = counter2.value;
    update();
  }
}
