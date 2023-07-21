import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_service_manager/presentation/bloc/parking_bloc.dart';
import 'package:shared/shared.dart';

import 'app/index.dart';

void main() {
  runApp(const ApplicationWrapper());
}

class ApplicationWrapper extends StatefulWidget {
  const ApplicationWrapper({super.key});

  @override
  State<ApplicationWrapper> createState() => _ApplicationWrapperState();
}

class _ApplicationWrapperState extends State<ApplicationWrapper> {
  @override
  void initState() {
    AppBootstrapper.instance.initialize(Flavor.development);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: AppBootstrapper.instance.isInitializedStream,
      builder: (context, snapshot) {
        final isInitialized = snapshot.data ?? false;

        if (!isInitialized) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }

        return Application(
          router: get<AppRouter>(),
        );
      },
    );
  }
}

class Application extends StatelessWidget {
  final AppRouter router;

  const Application({
    required this.router,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ParkingBloc>(
      create: (context) => get<ParkingBloc>()..add(const ParkingEvent.initialize()),
      child: MaterialApp.router(
        routerConfig: router.config(),
      ),
    );
  }
}
