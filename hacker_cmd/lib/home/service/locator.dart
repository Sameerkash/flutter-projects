import 'dart:developer';

import 'package:get_it/get_it.dart';
import 'package:hacker_cmd/home/manager/home.manager.dart';

GetIt getIt = GetIt.instance;

void setUp() {
  getIt.registerLazySingleton<Service>(() => Service());

  getIt.registerSingleton<HomeManager>(HomeManager());
}
