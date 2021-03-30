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

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

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
  String toString() {
    return '''
allConfigs: ${allConfigs},
topPadding: ${topPadding},
heigth: ${heigth},
isExpanded: ${isExpanded}
    ''';
  }
}
