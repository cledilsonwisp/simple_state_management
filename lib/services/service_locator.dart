import 'package:flutter_simple_state_management/pages/timer_page/timer_page_controller.dart';
import 'package:flutter_simple_state_management/services/storage_service/shared_preference_storage_service.dart';
import 'package:flutter_simple_state_management/services/storage_service/storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // state management layer
  getIt.registerLazySingleton<TimerPageManager>(() => TimerPageManager());

  // service layer
  getIt.registerLazySingleton<StorageService>(() => SharedPreferencesStorage());
}
