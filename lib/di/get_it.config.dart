// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/api/api_client.dart' as _i5;
import '../data/repositories/auth_repository.dart' as _i6;
import '../data/repositories/crop_repository.dart' as _i8;
import '../data/repositories/machine_repository.dart' as _i10;
import '../data/repositories/user_repository.dart' as _i13;
import '../presentation/cubits/auth/auth_cubit/auth_cubit.dart' as _i3;
import '../presentation/cubits/auth/change_password_cubit/change_password_cubit.dart'
    as _i7;
import '../presentation/cubits/auth/edit_profile_cubit/edit_profile_cubit.dart'
    as _i15;
import '../presentation/cubits/auth/login_cubit/login_cubit.dart' as _i9;
import '../presentation/cubits/auth/register_cubit/register_cubit.dart' as _i11;
import '../presentation/cubits/crop/scan_crop_cubit/scan_crop_cubit.dart'
    as _i12;
import '../presentation/cubits/machines/add_machine_cubit/add_machine_cubit.dart'
    as _i14;
import '../presentation/cubits/machines/get_machines_cubit/get_machines_cubit.dart'
    as _i16;
import '../presentation/cubits/notifications/get_notifications_cubit/get_notifications_cubit.dart'
    as _i17;
import '../presentation/cubits/notifications/process_notification_cubit/process_notification_cubit.dart'
    as _i20;
import '../presentation/cubits/orders/get_orders_cubit/get_orders_cubit.dart'
    as _i18;
import '../presentation/cubits/orders/order_machine_cubit/order_machine_cubit.dart'
    as _i19;
import 'di_module.dart' as _i21;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    gh.factory<_i3.AuthCubit>(() => _i3.AuthCubit());
    gh.lazySingleton<_i4.Dio>(() => injectionModule.dio());
    gh.lazySingleton<_i5.ApiClient>(() => _i5.ApiClient(gh<_i4.Dio>()));
    gh.lazySingleton<_i6.AuthRepository>(
        () => _i6.AuthRepository(gh<_i5.ApiClient>()));
    gh.factory<_i7.ChangePasswordCubit>(
        () => _i7.ChangePasswordCubit(gh<_i6.AuthRepository>()));
    gh.lazySingleton<_i8.CropRepository>(
        () => _i8.CropRepository(gh<_i5.ApiClient>()));
    gh.factory<_i9.LoginCubit>(() => _i9.LoginCubit(gh<_i6.AuthRepository>()));
    gh.lazySingleton<_i10.MachineRepository>(
        () => _i10.MachineRepository(gh<_i5.ApiClient>()));
    gh.factory<_i11.RegisterCubit>(
        () => _i11.RegisterCubit(gh<_i6.AuthRepository>()));
    gh.factory<_i12.ScanCropCubit>(
        () => _i12.ScanCropCubit(gh<_i8.CropRepository>()));
    gh.lazySingleton<_i13.UserRepository>(
        () => _i13.UserRepository(gh<_i5.ApiClient>()));
    gh.factory<_i14.AddMachineCubit>(
        () => _i14.AddMachineCubit(gh<_i10.MachineRepository>()));
    gh.factory<_i15.EditProfileCubit>(
        () => _i15.EditProfileCubit(gh<_i13.UserRepository>()));
    gh.factory<_i16.GetMachinesCubit>(
        () => _i16.GetMachinesCubit(gh<_i10.MachineRepository>()));
    gh.factory<_i17.GetNotificationsCubit>(
        () => _i17.GetNotificationsCubit(gh<_i13.UserRepository>()));
    gh.factory<_i18.GetOrdersCubit>(
        () => _i18.GetOrdersCubit(gh<_i13.UserRepository>()));
    gh.factory<_i19.OrderMachineCubit>(
        () => _i19.OrderMachineCubit(gh<_i13.UserRepository>()));
    gh.factory<_i20.ProcessNotificationCubit>(
        () => _i20.ProcessNotificationCubit(gh<_i13.UserRepository>()));
    return this;
  }
}

class _$InjectionModule extends _i21.InjectionModule {}
