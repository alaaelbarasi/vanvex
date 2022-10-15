import 'package:flutter/material.dart';

class BaseProvider extends ChangeNotifier {
  bool _isBusy = true;
  bool _isFailed = false;

  bool get isBusy => _isBusy;
  bool get isFailed => _isFailed;

  setIsBusy(value, {isInit = false}) {
    _isBusy = value;
    if (!isInit) {
      notifyListeners();
    }
  }

  setIsfailed(value, {isInit = false}) {
    _isFailed = value;
    if (!isInit) {
      notifyListeners();
    }
  }
}
