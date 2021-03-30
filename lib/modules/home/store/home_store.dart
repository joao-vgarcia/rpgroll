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
    if (_isExpanded) {
      _allConfigs = ['Contato', 'Sobre', 'Histórico'];
    }else{
      _allConfigs = ['', '', ''];
    }
    _allConfigs = ['Contato', 'Sobre', 'Histórico'];
  }
}
