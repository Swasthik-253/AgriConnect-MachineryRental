// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:agri_connect/data/models/crop.dart' as _i21;
import 'package:agri_connect/data/models/machine.dart' as _i20;
import 'package:agri_connect/presentation/pages/admin/add_machine_page.dart'
    as _i1;
import 'package:agri_connect/presentation/pages/auth/auth_page.dart' as _i2;
import 'package:agri_connect/presentation/pages/auth/change_password_page.dart'
    as _i3;
import 'package:agri_connect/presentation/pages/auth/login_page.dart' as _i8;
import 'package:agri_connect/presentation/pages/auth/register_page.dart'
    as _i14;
import 'package:agri_connect/presentation/pages/crops/crops_page.dart' as _i4;
import 'package:agri_connect/presentation/pages/crops/scan_crop_page.dart'
    as _i16;
import 'package:agri_connect/presentation/pages/home/home_page.dart' as _i6;
import 'package:agri_connect/presentation/pages/home/home_wrapper_page.dart'
    as _i7;
import 'package:agri_connect/presentation/pages/machines/machine_details_page.dart'
    as _i9;
import 'package:agri_connect/presentation/pages/machines/machines_page.dart'
    as _i10;
import 'package:agri_connect/presentation/pages/machines/rent_machine_page.dart'
    as _i15;
import 'package:agri_connect/presentation/pages/notifications/notifications_page.dart'
    as _i11;
import 'package:agri_connect/presentation/pages/orders/orders_page.dart'
    as _i12;
import 'package:agri_connect/presentation/pages/profile/edit_profile_page.dart'
    as _i5;
import 'package:agri_connect/presentation/pages/profile/profile_page.dart'
    as _i13;
import 'package:agri_connect/presentation/pages/splash/splash_page.dart'
    as _i17;
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

abstract class $AppRouter extends _i18.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    AddMachineRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i1.AddMachinePage()),
      );
    },
    AuthRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthPage(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i3.ChangePasswordPage()),
      );
    },
    CropsRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CropsPage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i5.EditProfilePage()),
      );
    },
    HomeRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    HomeWrapperRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeWrapperPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i8.LoginPage()),
      );
    },
    MachineDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MachineDetailsRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(
            child: _i9.MachineDetailsPage(
          key: args.key,
          machine: args.machine,
        )),
      );
    },
    MachinesRoute.name: (routeData) {
      final args = routeData.argsAs<MachinesRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(
            child: _i10.MachinesPage(
          key: args.key,
          crop: args.crop,
        )),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i11.NotificationsPage()),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i12.OrdersPage()),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ProfilePage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i14.RegisterPage()),
      );
    },
    RentMachineRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.RentMachinePage(),
      );
    },
    ScanCropRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i16.ScanCropPage()),
      );
    },
    SplashRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddMachinePage]
class AddMachineRoute extends _i18.PageRouteInfo<void> {
  const AddMachineRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AddMachineRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddMachineRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i18.PageRouteInfo<void> {
  const AuthRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ChangePasswordPage]
class ChangePasswordRoute extends _i18.PageRouteInfo<void> {
  const ChangePasswordRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ChangePasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CropsPage]
class CropsRoute extends _i18.PageRouteInfo<void> {
  const CropsRoute({List<_i18.PageRouteInfo>? children})
      : super(
          CropsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CropsRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EditProfilePage]
class EditProfileRoute extends _i18.PageRouteInfo<void> {
  const EditProfileRoute({List<_i18.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeWrapperPage]
class HomeWrapperRoute extends _i18.PageRouteInfo<void> {
  const HomeWrapperRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeWrapperRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute({List<_i18.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MachineDetailsPage]
class MachineDetailsRoute extends _i18.PageRouteInfo<MachineDetailsRouteArgs> {
  MachineDetailsRoute({
    _i19.Key? key,
    required _i20.Machine machine,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          MachineDetailsRoute.name,
          args: MachineDetailsRouteArgs(
            key: key,
            machine: machine,
          ),
          initialChildren: children,
        );

  static const String name = 'MachineDetailsRoute';

  static const _i18.PageInfo<MachineDetailsRouteArgs> page =
      _i18.PageInfo<MachineDetailsRouteArgs>(name);
}

class MachineDetailsRouteArgs {
  const MachineDetailsRouteArgs({
    this.key,
    required this.machine,
  });

  final _i19.Key? key;

  final _i20.Machine machine;

  @override
  String toString() {
    return 'MachineDetailsRouteArgs{key: $key, machine: $machine}';
  }
}

/// generated route for
/// [_i10.MachinesPage]
class MachinesRoute extends _i18.PageRouteInfo<MachinesRouteArgs> {
  MachinesRoute({
    _i19.Key? key,
    required _i21.Crop crop,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          MachinesRoute.name,
          args: MachinesRouteArgs(
            key: key,
            crop: crop,
          ),
          initialChildren: children,
        );

  static const String name = 'MachinesRoute';

  static const _i18.PageInfo<MachinesRouteArgs> page =
      _i18.PageInfo<MachinesRouteArgs>(name);
}

class MachinesRouteArgs {
  const MachinesRouteArgs({
    this.key,
    required this.crop,
  });

  final _i19.Key? key;

  final _i21.Crop crop;

  @override
  String toString() {
    return 'MachinesRouteArgs{key: $key, crop: $crop}';
  }
}

/// generated route for
/// [_i11.NotificationsPage]
class NotificationsRoute extends _i18.PageRouteInfo<void> {
  const NotificationsRoute({List<_i18.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OrdersPage]
class OrdersRoute extends _i18.PageRouteInfo<void> {
  const OrdersRoute({List<_i18.PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ProfilePage]
class ProfileRoute extends _i18.PageRouteInfo<void> {
  const ProfileRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i14.RegisterPage]
class RegisterRoute extends _i18.PageRouteInfo<void> {
  const RegisterRoute({List<_i18.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i15.RentMachinePage]
class RentMachineRoute extends _i18.PageRouteInfo<void> {
  const RentMachineRoute({List<_i18.PageRouteInfo>? children})
      : super(
          RentMachineRoute.name,
          initialChildren: children,
        );

  static const String name = 'RentMachineRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i16.ScanCropPage]
class ScanCropRoute extends _i18.PageRouteInfo<void> {
  const ScanCropRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ScanCropRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScanCropRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SplashPage]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}
