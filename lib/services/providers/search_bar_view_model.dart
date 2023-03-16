import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class SearchBarViewModel extends ChangeNotifier {
  bool _searchBarPressed = false;

  bool get getSearchBarPressed => _searchBarPressed;

  void setSearchBarStatus() {
    _searchBarPressed = !_searchBarPressed;
    notifyListeners();
  }
}
