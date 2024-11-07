import 'package:agri_connect/di/get_it.dart';
import 'package:agri_connect/presentation/cubits/auth/auth_cubit/auth_cubit.dart';
import 'package:agri_connect/presentation/routes/app_router.dart';
import 'package:agri_connect/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..checkAuth(),
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        theme: AppTheme.lightTheme,
      ),
    );
  }
}
