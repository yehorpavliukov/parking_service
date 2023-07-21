import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:repositories/repositories.dart';
import 'package:services/services.dart';
import 'package:shared/shared.dart';

class RepositoryBootstrapper extends ServiceLocator {
  static final instance = RepositoryBootstrapper._();

  RepositoryBootstrapper._();

  Future<void> initialize() async {
    await ServiceBootstrapper.instance.initialize();

    final connectivity = Connectivity();

    registerLazySingleton(() => ParkingRepository(connectivity, get()));
  }
}
