import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart with ChangeNotifier {
  int _number = 0;
  int get number => _number;
  addItem() {
    _number++;
    notifyListeners();
  }
}
