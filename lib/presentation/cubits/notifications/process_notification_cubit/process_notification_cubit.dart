import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/repositories/user_repository.dart';
import '../../../../domain/entites/app_error.dart';
import '../../../../domain/entites/params/process_notification_params.dart';

part 'process_notification_state.dart';

@injectable
class ProcessNotificationCubit extends Cubit<ProcessNotificationState> {
  final UserRepository _userRepository;

  ProcessNotificationCubit(this._userRepository)
      : super(ProcessNotificationInitial());

  void processNotification(ProcessNotificationParams params) async {
    if (state is ProcessNotificationLoading) return;
    // return _mockProcessNotification(params);
    emit(ProcessNotificationLoading(params));
    final res = await _userRepository.processNotification(params.toMap());
    emit(res.fold((l) => ProcessNotificationFailure(l),
        (r) => ProcessNotificationSuccess(params)));
  }

  void _mockProcessNotification(ProcessNotificationParams params) async {
    emit(ProcessNotificationLoading(params));
    await Future.delayed(const Duration(seconds: 2));
    emit(ProcessNotificationSuccess(params));
  }
}
