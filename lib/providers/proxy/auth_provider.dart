import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
    bool _isAdmin = false;

    bool get isUserAdmin => _isAdmin;


    void changeStatus(){
      _isAdmin = !_isAdmin;
      notifyListeners();
      print('is admin $_isAdmin');
    }

}