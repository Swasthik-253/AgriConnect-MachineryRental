import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RegisterRoute.page,
        ),
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: AuthRoute.page,
        ),
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: HomeWrapperRoute.page,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              initial: true,
            ),
            AutoRoute(
              page: MachineDetailsRoute.page,
            ),
            AutoRoute(
              page: MachinesRoute.page,
            ),
            AutoRoute(
              page: CropsRoute.page,
            ),
            AutoRoute(
              page: AddMachineRoute.page,
            ),
            AutoRoute(
              page: NotificationsRoute.page,
            ),
            AutoRoute(
              page: ScanCropRoute.page,
            ),
            AutoRoute(
              page: ProfileRoute.page,
            ),
            AutoRoute(
              page: RentMachineRoute.page,
            ),
            AutoRoute(
              page: EditProfileRoute.page,
            ),
            AutoRoute(
              page: ChangePasswordRoute.page,
            ),
            AutoRoute(
              page: OrdersRoute.page,
            ),
          ],
        ),
      ];
}
