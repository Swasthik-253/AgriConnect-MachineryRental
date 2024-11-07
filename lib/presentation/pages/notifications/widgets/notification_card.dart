import 'package:agri_connect/data/models/notification_model.dart';
import 'package:agri_connect/domain/entites/params/process_notification_params.dart';
import 'package:agri_connect/presentation/cubits/notifications/get_notifications_cubit/get_notifications_cubit.dart';
import 'package:agri_connect/presentation/cubits/notifications/process_notification_cubit/process_notification_cubit.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notification;

  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: BlocConsumer<ProcessNotificationCubit, ProcessNotificationState>(
        listener: (context, state) {
          if (state is ProcessNotificationSuccess) {
            context
                .read<GetNotificationsCubit>()
                .updateNotificationAsProcessed(id: notification.id);
            context.showSuccessBar(
                content: Text(
                    'Request ${state.params!.action == NotiAction.accept ? 'accepted' : 'rejected'} successfully!'));
          }
          if (state is ProcessNotificationFailure) {
            context.showErrorBar(content: Text(state.error.message));
          }
        },
        builder: (context, state) {
          return ListTile(
            leading: const Icon(Icons.notifications),
            title: Text(notification.title),
            trailing: state is ProcessNotificationLoading &&
                    state.params!.id == notification.id
                ? const SizedBox(
                    width: 20, height: 20, child: CircularProgressIndicator())
                : null,
            subtitle: Column(
              children: [
                Text(notification.body),
                if (notification.type == NotiType.action &&
                    !notification.isProcessed)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          context
                              .read<ProcessNotificationCubit>()
                              .processNotification(ProcessNotificationParams(
                                  id: notification.id,
                                  action: NotiAction.reject));
                        },
                        child: const Text('Reject'),
                      ),
                      TextButton(
                        onPressed: () {
                          context
                              .read<ProcessNotificationCubit>()
                              .processNotification(ProcessNotificationParams(
                                  id: notification.id,
                                  action: NotiAction.accept));
                        },
                        child: const Text('Accept'),
                      ),
                    ],
                  )
              ],
            ),
          );
        },
      ),
    );
  }
}
