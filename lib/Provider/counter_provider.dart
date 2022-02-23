import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int counter = 0;
  bool mood = true;
  ThemeMode theam = ThemeMode.light;
  void incremment() {
    counter++;
    notifyListeners();
  }

  void reset() {
    counter = 0;
    notifyListeners();
  }

  void decremment() {
    if (counter > 0) {
      counter--;
      notifyListeners();
    }
  }

  void inccremmentByTen() {
    counter = counter + 10;
    notifyListeners();
  }

  void changeMood(bool value) {
    mood = value;
    if (mood == false) {
      theam = ThemeMode.dark;
    } else {
      theam = ThemeMode.light;
    }
    notifyListeners();
  }
}
