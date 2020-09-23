import 'package:flutter/cupertino.dart';

class DataProvider extends ChangeNotifier {
  final bool isAdmin;

  DataProvider({@required this.isAdmin});

  void showData() {
    if (isAdmin) print('В АТБ картошка по акции, до 28.09');

    notifyListeners();
  }

  String showSecretInformation() {
    if (isAdmin) return 'Admin';

    return 'User';
  }
}
