import 'package:auto_route/auto_route.dart';
import 'package:parking_service_manager/presentation/ui/home.dart';
import 'package:parking_service_manager/presentation/ui/tickets.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(path: '/tickets', page: TicketsRoute.page),
      ];
}
