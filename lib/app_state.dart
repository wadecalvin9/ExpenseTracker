import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _ExpensesTotal = 0;
  int get ExpensesTotal => _ExpensesTotal;
  set ExpensesTotal(int value) {
    _ExpensesTotal = value;
  }

  int _Index = 0;
  int get Index => _Index;
  set Index(int value) {
    _Index = value;
  }
}
