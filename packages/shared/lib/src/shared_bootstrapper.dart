import 'dart:developer';

import 'package:shared/shared.dart';

Logger get l => ServiceLocator.getIt<Logger>();

class SharedBootstrapper extends ServiceLocator {
  static final instance = SharedBootstrapper._();

  SharedBootstrapper._();

  Future<void> initialize() async {
    try {
      registerLazySingleton<Logger>(
        () => Logger.factory(get<AppManager>().isDev),
      );
    } on Object catch (e) {
      log('ServicesBootstrapper error: ${e.toString()}');
    }

    await allReady();
  }
}
