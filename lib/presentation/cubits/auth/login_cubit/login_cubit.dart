import 'package:agri_connect/domain/entites/params/login_params.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/models/user.dart';
import '../../../../data/repositories/auth_repository.dart';
import '../../../../domain/entites/app_error.dart';

part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;

  LoginCubit(this._authRepository) : super(LoginInitial());

  Future<void> login(LoginParams loginParams) async {
    // return _mockLogin();
    emit(LoginLoading());
    final res = await _authRepository.login(loginParams.toMap());
    print(res);
    emit(res.fold((l) => LoginFailure(l), (r) => LoginSuccess(r)));
  }

  Future<void> _mockLogin() async {
    emit(LoginLoading());
    await Future.delayed(const Duration(seconds: 2));
    final user = User.admin();

    emit(LoginSuccess(user));
  }
}
