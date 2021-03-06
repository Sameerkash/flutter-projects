import 'dart:developer';

import 'package:get_it/get_it.dart';
import 'package:hacker_cmd/service/repo.dart';
import 'package:hacker_cmd/views/home.vm.dart';

GetIt getIt = GetIt.instance;

void setUp() {
  getIt.registerLazySingleton<Service>(() => Service());

  getIt.registerSingleton<HomeVM>(HomeVM());
}
