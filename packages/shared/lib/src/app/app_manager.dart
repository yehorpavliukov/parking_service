import 'package:shared/shared.dart';

class AppManager {
  Flavor flavor;

  bool get isDev => flavor != Flavor.prod;

  AppConfig get config => AppConfig(
        baseUrl: 'http://parkingservice.com',
      );

  AppManager(this.flavor);
}

class AppConfig {
  final String baseUrl;

  AppConfig({
    required this.baseUrl,
  });
}
