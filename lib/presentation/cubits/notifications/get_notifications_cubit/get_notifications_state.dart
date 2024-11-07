part of 'get_notifications_cubit.dart';

abstract class GetNotificationsState extends Equatable {
  const GetNotificationsState();
}

class GetNotificationsInitial extends GetNotificationsState {
  @override
  List<Object> get props => [];
}

class GetNotificationsLoading extends GetNotificationsState {
  @override
  List<Object> get props => [];
}

class GetNotificationsSuccess extends GetNotificationsState {
  final List<NotificationModel> notifications;

  const GetNotificationsSuccess(this.notifications);

  @override
  List<Object> get props => [notifications];
}

class GetNotificationsFailure extends GetNotificationsState {
  final AppError error;

  const GetNotificationsFailure(this.error);

  @override
  List<Object> get props => [error];
}
