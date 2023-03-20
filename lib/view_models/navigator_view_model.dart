import 'package:flutter/material.dart';

class NavigatorViewModel extends ChangeNotifier {
  int _currentIndex = 0;

  void setIndex(int a) {
    _currentIndex = a;
    notifyListeners();
  }

  int get getCurrentIndex => _currentIndex;
}
