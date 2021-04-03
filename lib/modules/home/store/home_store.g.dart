// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  Computed<List<String>> _$allConfigsComputed;

  @override
  List<String> get allConfigs =>
      (_$allConfigsComputed ??= Computed<List<String>>(() => super.allConfigs,
              name: 'HomeStoreBase.allConfigs'))
          .value;
  Computed<double> _$topPaddingComputed;

  @override
  double get topPadding =>
      (_$topPaddingComputed ??= Computed<double>(() => super.topPadding,
              name: 'HomeStoreBase.topPadding'))
          .value;
  Computed<double> _$heigthComputed;

  @override
  double get heigth => (_$heigthComputed ??=
          Computed<double>(() => super.heigth, name: 'HomeStoreBase.heigth'))
      .value;
  Computed<bool> _$isExpandedComputed;

  @override
  bool get isExpanded =>
      (_$isExpandedComputed ??= Computed<bool>(() => super.isExpanded,
              name: 'HomeStoreBase.isExpanded'))
          .value;
  Computed<int> _$valueComputed;

  @override
  int get value => (_$valueComputed ??=
          Computed<int>(() => super.value, name: 'HomeStoreBase.value'))
      .value;
  Computed<int> _$dicesComputed;

  @override
  int get dices => (_$dicesComputed ??=
          Computed<int>(() => super.dices, name: 'HomeStoreBase.dices'))
      .value;
  Computed<int> _$bonusComputed;

  @override
  int get bonus => (_$bonusComputed ??=
          Computed<int>(() => super.bonus, name: 'HomeStoreBase.bonus'))
      .value;
  Computed<int> _$finalValueComputed;

  @override
  int get finalValue =>
      (_$finalValueComputed ??= Computed<int>(() => super.finalValue,
              name: 'HomeStoreBase.finalValue'))
          .value;

  final _$_heigthAtom = Atom(name: 'HomeStoreBase._heigth');

  @override
  double get _heigth {
    _$_heigthAtom.reportRead();
    return super._heigth;
  }

  @override
  set _heigth(double value) {
    _$_heigthAtom.reportWrite(value, super._heigth, () {
      super._heigth = value;
    });
  }

  final _$_topPaddingAtom = Atom(name: 'HomeStoreBase._topPadding');

  @override
  double get _topPadding {
    _$_topPaddingAtom.reportRead();
    return super._topPadding;
  }

  @override
  set _topPadding(double value) {
    _$_topPaddingAtom.reportWrite(value, super._topPadding, () {
      super._topPadding = value;
    });
  }

  final _$_allConfigsAtom = Atom(name: 'HomeStoreBase._allConfigs');

  @override
  List<String> get _allConfigs {
    _$_allConfigsAtom.reportRead();
    return super._allConfigs;
  }

  @override
  set _allConfigs(List<String> value) {
    _$_allConfigsAtom.reportWrite(value, super._allConfigs, () {
      super._allConfigs = value;
    });
  }

  final _$_isExpandedAtom = Atom(name: 'HomeStoreBase._isExpanded');

  @override
  bool get _isExpanded {
    _$_isExpandedAtom.reportRead();
    return super._isExpanded;
  }

  @override
  set _isExpanded(bool value) {
    _$_isExpandedAtom.reportWrite(value, super._isExpanded, () {
      super._isExpanded = value;
    });
  }

  final _$_valueAtom = Atom(name: 'HomeStoreBase._value');

  @override
  int get _value {
    _$_valueAtom.reportRead();
    return super._value;
  }

  @override
  set _value(int value) {
    _$_valueAtom.reportWrite(value, super._value, () {
      super._value = value;
    });
  }

  final _$_dicesAtom = Atom(name: 'HomeStoreBase._dices');

  @override
  int get _dices {
    _$_dicesAtom.reportRead();
    return super._dices;
  }

  @override
  set _dices(int value) {
    _$_dicesAtom.reportWrite(value, super._dices, () {
      super._dices = value;
    });
  }

  final _$_bonusAtom = Atom(name: 'HomeStoreBase._bonus');

  @override
  int get _bonus {
    _$_bonusAtom.reportRead();
    return super._bonus;
  }

  @override
  set _bonus(int value) {
    _$_bonusAtom.reportWrite(value, super._bonus, () {
      super._bonus = value;
    });
  }

  final _$showCalcsAtom = Atom(name: 'HomeStoreBase.showCalcs');

  @override
  String get showCalcs {
    _$showCalcsAtom.reportRead();
    return super.showCalcs;
  }

  @override
  set showCalcs(String value) {
    _$showCalcsAtom.reportWrite(value, super.showCalcs, () {
      super.showCalcs = value;
    });
  }

  final _$_finalValueAtom = Atom(name: 'HomeStoreBase._finalValue');

  @override
  int get _finalValue {
    _$_finalValueAtom.reportRead();
    return super._finalValue;
  }

  @override
  set _finalValue(int value) {
    _$_finalValueAtom.reportWrite(value, super._finalValue, () {
      super._finalValue = value;
    });
  }

  final _$isVisibleAtom = Atom(name: 'HomeStoreBase.isVisible');

  @override
  List<bool> get isVisible {
    _$isVisibleAtom.reportRead();
    return super.isVisible;
  }

  @override
  set isVisible(List<bool> value) {
    _$isVisibleAtom.reportWrite(value, super.isVisible, () {
      super.isVisible = value;
    });
  }

  final _$popScopeAtom = Atom(name: 'HomeStoreBase.popScope');

  @override
  List<bool> get popScope {
    _$popScopeAtom.reportRead();
    return super.popScope;
  }

  @override
  set popScope(List<bool> value) {
    _$popScopeAtom.reportWrite(value, super.popScope, () {
      super.popScope = value;
    });
  }

  final _$hAtom = Atom(name: 'HomeStoreBase.h');

  @override
  double get h {
    _$hAtom.reportRead();
    return super.h;
  }

  @override
  set h(double value) {
    _$hAtom.reportWrite(value, super.h, () {
      super.h = value;
    });
  }

  final _$wAtom = Atom(name: 'HomeStoreBase.w');

  @override
  double get w {
    _$wAtom.reportRead();
    return super.w;
  }

  @override
  set w(double value) {
    _$wAtom.reportWrite(value, super.w, () {
      super.w = value;
    });
  }

  final _$canShowDialogAtom = Atom(name: 'HomeStoreBase.canShowDialog');

  @override
  bool get canShowDialog {
    _$canShowDialogAtom.reportRead();
    return super.canShowDialog;
  }

  @override
  set canShowDialog(bool value) {
    _$canShowDialogAtom.reportWrite(value, super.canShowDialog, () {
      super.canShowDialog = value;
    });
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  dynamic setPopScope(int position) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setPopScope');
    try {
      return super.setPopScope(position);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setAllPop() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setAllPop');
    try {
      return super.setAllPop();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setInvisible(int position) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setInvisible');
    try {
      return super.setInvisible(position);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setAllVisible() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setAllVisible');
    try {
      return super.setAllVisible();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setHeight(double value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setHeight');
    try {
      return super.setHeight(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTopPadding(double value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setTopPadding');
    try {
      return super.setTopPadding(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeExpanded() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.changeExpanded');
    try {
      return super.changeExpanded();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setConfigValues() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setConfigValues');
    try {
      return super.setConfigValues();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setInitialValue(int value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setInitialValue');
    try {
      return super.setInitialValue(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic plusValue() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.plusValue');
    try {
      return super.plusValue();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic minusValue() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.minusValue');
    try {
      return super.minusValue();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic plusBonus() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.plusBonus');
    try {
      return super.plusBonus();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic minusBonus() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.minusBonus');
    try {
      return super.minusBonus();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic rollAndCalculate() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.rollAndCalculate');
    try {
      return super.rollAndCalculate();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clear() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.clear');
    try {
      return super.clear();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clearValue() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.clearValue');
    try {
      return super.clearValue();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showCalcs: ${showCalcs},
isVisible: ${isVisible},
popScope: ${popScope},
h: ${h},
w: ${w},
canShowDialog: ${canShowDialog},
allConfigs: ${allConfigs},
topPadding: ${topPadding},
heigth: ${heigth},
isExpanded: ${isExpanded},
value: ${value},
dices: ${dices},
bonus: ${bonus},
finalValue: ${finalValue}
    ''';
  }
}
