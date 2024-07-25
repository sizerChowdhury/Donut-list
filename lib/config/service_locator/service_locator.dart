import 'package:donut_list/data/data_source/local_data_source.dart';
import 'package:donut_list/data/repository/donut_repo_imp.dart';
import 'package:donut_list/domain/repository/donut_repo.dart';
import 'package:donut_list/domain/use_cases/donut_use_case.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

void setUp() {
  serviceLocator.registerLazySingleton<DonutUseCase>(
      () => DonutUseCase(serviceLocator<DonutRepository>()));
  serviceLocator.registerLazySingleton<DonutRepository>(
      () => DonutRepositoryImpl(LocalDataSource()));
}
