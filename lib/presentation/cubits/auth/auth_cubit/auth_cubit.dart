import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/models/user.dart';

part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(Unauthenticated());
  Future<void> checkAuth() async {
    await Future.delayed(const Duration(milliseconds: 500));
    unauthenticated();
  }

  void authenticated(User user) {
    emit(Authenticated(user));
  }

  void unauthenticated() {
    emit(Unauthenticated());
  }
}
