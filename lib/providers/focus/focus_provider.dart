import 'package:flutter/material.dart';

class FocusProvider extends ChangeNotifier {
  void updateFocus() => notifyListeners();
}