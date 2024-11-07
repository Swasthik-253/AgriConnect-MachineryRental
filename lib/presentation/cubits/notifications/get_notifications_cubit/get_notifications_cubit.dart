import 'package:agri_connect/data/models/notification_model.dart';
import 'package:agri_connect/data/repositories/user_repository.dart';
import 'package:agri_connect/domain/entites/params/get_notification_params.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entites/app_error.dart';

part 'get_notifications_state.dart';

@injectable
class GetNotificationsCubit extends Cubit<GetNotificationsState> {
  final UserRepository _userRepository;

  GetNotificationsCubit(this._userRepository)
      : super(GetNotificationsInitial());

  Future<void> getNotifications(GetNotificationParams params) async {
    // return _mockGetNotifications();
    emit(GetNotificationsLoading());
    final res = await _userRepository.getNotifications(params.toMap());
    emit(res.fold(
        (l) => GetNotificationsFailure(l), (r) => GetNotificationsSuccess(r)));
  }

  void updateNotificationAsProcessed({required String id}) {
    final notifications = List<NotificationModel>.from(
        (state as GetNotificationsSuccess).notifications);
    final index = notifications.indexWhere((element) => element.id == id);
    if (index != -1) {
      notifications[index] = notifications[index].copyWith(isProcessed: true);
      emit(GetNotificationsSuccess(notifications));
    }
  }

  List<NotificationModel> _generateNotifications() {
    return List.generate(
      10,
      (index) => NotificationModel(
        id: index.toString(),
        title: 'Notification $index',
        body: 'This is the body of the notification $index',
        type: index % 2 == 0 ? NotiType.action : NotiType.normal,
        createdAt: DateTime.now(),
      ),
    );
  }

  void _mockGetNotifications() async {
    emit(GetNotificationsLoading());
    await Future.delayed(const Duration(seconds: 2));
    final notifications = _generateNotifications();
    emit(GetNotificationsSuccess(notifications));
  }
}
