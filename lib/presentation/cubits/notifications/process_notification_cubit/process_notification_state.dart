part of 'process_notification_cubit.dart';

abstract class ProcessNotificationState extends Equatable {
  final ProcessNotificationParams? params;

  const ProcessNotificationState({this.params});
}

class ProcessNotificationInitial extends ProcessNotificationState {
  @override
  List<Object> get props => [];
}

class ProcessNotificationLoading extends ProcessNotificationState {
  const ProcessNotificationLoading(ProcessNotificationParams params)
      : super(params: params);

  @override
  List<Object?> get props => [params];
}

class ProcessNotificationSuccess extends ProcessNotificationState {
  const ProcessNotificationSuccess(ProcessNotificationParams params)
      : super(params: params);

  @override
  List<Object?> get props => [params];
}

class ProcessNotificationFailure extends ProcessNotificationState {
  final AppError error;

  const ProcessNotificationFailure(this.error);

  @override
  List<Object> get props => [error];
}
