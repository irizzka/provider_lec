import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get counterValue => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }


  // for Selector Example

  int _anotherCounter = 0;

  int get showAnotherCounter => _anotherCounter;

  void updateAnotherCounter() {
    _anotherCounter++;
    notifyListeners();
  }


}
