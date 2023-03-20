import 'package:flutter/material.dart';

class ReelsPageViewModel extends ChangeNotifier {
  bool _isLiked = false;
  int liked = 1324;

  bool get getIsLiked => _isLiked;

  int get getLikedTotal => liked;

  void setIsLiked() {
    _isLiked = !_isLiked;
    notifyListeners();
  }

  void increment() {
    liked++;
    notifyListeners();
  }

  void discrement() {
    liked--;
    notifyListeners();
  }
}
