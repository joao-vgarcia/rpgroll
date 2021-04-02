import 'dart:math';

import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  double _heigth = 0;

  @observable
  double _topPadding = 0;

  @observable
  List<String> _allConfigs = ['', '', ''];

  @computed
  List<String> get allConfigs => _allConfigs;

  @computed
  double get topPadding => _topPadding;

  @computed
  double get heigth => _heigth;

  @observable
  bool _isExpanded = false;

  @computed
  bool get isExpanded => _isExpanded;

  @observable
  int _value = 0;

  @computed
  int get value => _value;

  @observable
  int _dices = 1;

  @computed
  int get dices => _dices;

  @observable
  int _bonus = 0;

  @computed
  int get bonus => _bonus;

  @observable
  String showCalcs = '';

  @observable
  int _finalValue = 0;

  @observable
  List<bool> isVisible = [true, true, true, true, true, true, true, true];

  @computed
  int get finalValue => _finalValue;


  @action
  setInvisible(int position) {
    isVisible = [false, false, false, false, false, false, false, false];
    isVisible[position] = true;
  }

  @action
  setAllVisible(){
    isVisible = [true, true, true, true, true, true, true, true];
  }

  @action
  setHeight(double value) {
    _heigth = value + _topPadding;
  }

  @action
  setTopPadding(double value) {
    _topPadding = value;
  }

  @action
  changeExpanded() {
    _isExpanded = !_isExpanded;
  }

  @action
  setConfigValues() {
    _allConfigs = ['Contato', 'Sobre', 'Histórico'];
  }

  @action
  setInitialValue(int value) {
    _value = value;
  }

  @action
  plusValue() => _dices++;

  @action
  minusValue() {
    if (_dices > 1) {
      _dices--;
    }
  }

  @action
  plusBonus() => _bonus++;

  @action
  minusBonus() => _bonus--;

  @action
  rollAndCalculate() {
    showCalcs = '';
    int v = 0;
    int all = 0;
    var random = new Random();
    for (int i = 1; i <= _dices; i++) {
      v = random.nextInt(_value) + 1;
      all += v;
      if (showCalcs.isEmpty) {
        showCalcs = '${v.toString()}';
      } else {
        showCalcs = '$showCalcs, ${v.toString()}';
      }
    }
    all += _bonus;
    _finalValue = all;

    if (_bonus >= 1) {
      showCalcs = '$showCalcs, + $_bonus';
    } else if (_bonus < 0) {
      showCalcs = '$showCalcs, $_bonus';
    }

    clear();
  }

  @action
  clear() {
    _bonus = 0;
    _dices = 1;
  }

  @action
  clearValue() {
    showCalcs = '';
    _finalValue = 0;
  }
}
