import 'package:chopper/chopper.dart';
import 'package:services/services.dart';
import 'package:shared/shared.dart';

class ServiceBootstrapper extends ServiceLocator {
  static final instance = ServiceBootstrapper._();

  ServiceBootstrapper._();

  Future<void> initialize() async {
    final appManager = get<AppManager>();
    final chopperClient = _createClient(JsonSerializableConverter.instance, appManager);

    registerLazySingleton<IParkingService>(() => appManager.isDev ? FakeParkingService() : ParkingService.create(chopperClient));
  }

  ChopperClient _createClient(
    Converter converter,
    AppManager appManager,
  ) {
    final interceptors = <dynamic>[];

    if (appManager.isDev) {
      interceptors.add(ChopperLoggingInterceptor(l));
    }

    return ChopperClient(
      baseUrl: Uri.parse(appManager.config.baseUrl),
      converter: converter,
      interceptors: interceptors,
    );
  }
}
