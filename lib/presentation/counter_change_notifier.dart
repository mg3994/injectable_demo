import 'package:crusher/core/di/di_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterChangeNotifier extends ChangeNotifier {
  final ConstantsTemplate _constantsTemplate;

  CounterChangeNotifier(this._constantsTemplate);
  int _value = 0;
  int get value => _value;
  void incriment() {
    _value += _constantsTemplate.getIncrement();
    notifyListeners();
  }
}
