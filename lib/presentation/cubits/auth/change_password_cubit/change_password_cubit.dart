import 'package:agri_connect/domain/entites/params/change_password_params.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/repositories/auth_repository.dart';
import '../../../../domain/entites/app_error.dart';

part 'change_password_state.dart';

@injectable
class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  final AuthRepository _authRepository;

  ChangePasswordCubit(this._authRepository) : super(ChangePasswordInitial());

  Future<void> changePassword(ChangePasswordParams params) async {
    emit(ChangePasswordLoading());
    final res = await _authRepository.changePassword(params.toMap());
    print(res);
    emit(res.fold(
        (l) => ChangePasswordFailure(l), (r) => ChangePasswordSuccess()));
  }
}
