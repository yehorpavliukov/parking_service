import 'dart:developer';

import 'package:get_it/get_it.dart';
import 'package:parking_service_manager/presentation/bloc/parking_bloc.dart';
import 'package:repositories/repositories.dart';
import 'package:rxdart/subjects.dart';
import 'package:shared/shared.dart';

import 'app_router.dart';


GetIt get get => ServiceLocator.getIt;

class AppBootstrapper extends ServiceLocator {
  final _isInitialized = BehaviorSubject.seeded(false);
  static final instance = AppBootstrapper._();

  Stream<bool> get isInitializedStream => _isInitialized.asBroadcastStream();

  AppBootstrapper._();

  Future<void> initialize(
    Flavor flavor,
  ) async {
    try {
      _isInitialized.value = false;
      ServiceLocator.initialize();
      registerSingleton(AppManager(flavor));
      registerSingleton(AppRouter());

      await SharedBootstrapper.instance.initialize();

      await RepositoryBootstrapper.instance.initialize();

      _registerBlocs();

      _isInitialized.value = true;
    } on Object catch (e) {
      log('AppBootstrapper error: ${e.toString()}');
    }
  }

  void _registerBlocs() {
    registerFactory(() => ParkingBloc(get()));
  }
}
