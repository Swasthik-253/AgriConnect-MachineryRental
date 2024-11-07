import 'package:agri_connect/di/get_it.dart';
import 'package:agri_connect/domain/entites/params/get_notification_params.dart';
import 'package:agri_connect/presentation/cubits/notifications/get_notifications_cubit/get_notifications_cubit.dart';
import 'package:agri_connect/presentation/cubits/notifications/process_notification_cubit/process_notification_cubit.dart';
import 'package:agri_connect/presentation/pages/notifications/widgets/notification_card.dart';
import 'package:agri_connect/presentation/widgets/app_error_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
// import 'package:http/http.dart' as http;

import '../../cubits/auth/auth_cubit/auth_cubit.dart';

@RoutePage()
class NotificationsPage extends StatelessWidget implements AutoRouteWrapper {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: BlocBuilder<GetNotificationsCubit, GetNotificationsState>(
        builder: (context, state) {
          if (state is GetNotificationsLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is GetNotificationsFailure) {
            return Center(child: AppErrorWidget(error: state.error));
          }
          if (state is GetNotificationsSuccess) {
            final notifications = state.notifications;
            return ListView.separated(
              padding: const EdgeInsets.all(24),
              itemBuilder: (context, index) => NotificationCard(
                notification: notifications[index],
              ),
              itemCount: notifications.length,
              separatorBuilder: (context, index) => const Gap(20),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    final user = context.read<AuthCubit>().state.user!;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<GetNotificationsCubit>()
            ..getNotifications(GetNotificationParams(email: user.email)),
        ),
        BlocProvider(
          create: (_) => getIt<ProcessNotificationCubit>(),
        ),
      ],
      child: this,
    );
  }
}
