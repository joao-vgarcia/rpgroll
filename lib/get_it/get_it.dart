import 'package:get_it/get_it.dart';
import 'package:rpgroll/modules/home/store/home_store.dart';

final getIt = GetIt.instance;

void setUpLocator() {
  getIt.registerLazySingleton<HomeStore>(() => HomeStore());
}
