import 'package:get_it/get_it.dart';
import 'package:tortoise_ui/application/product/product_bloc.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // locator.registerLazySingleton(() => DataSourceExceptionHandler());
  // Register ProductBloc as a factory so a fresh instance is created when a
  // widget requests it. This avoids creating a long-lived singleton at app
  // startup and keeps initialization lightweight.
  locator.registerFactory(() => ProductBloc());
}
