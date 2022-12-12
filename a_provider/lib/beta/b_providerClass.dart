import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class B_Provider extends ChangeNotifier {
  int _counter = 0;
  int x = 0;
  int y = 0;

  int get showx => x;
  int get showy => y;
  int get showCounter => _counter;
  void CntrPlusOne() {
    _counter++;
    notifyListeners();
  }

  void xPlusOne() {
    x++;
    notifyListeners();
  }

  void yPlusOne() {
    y++;
    notifyListeners();
  }
}
