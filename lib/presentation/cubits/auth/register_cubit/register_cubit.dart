import 'package:agri_connect/data/repositories/auth_repository.dart';
import 'package:agri_connect/domain/entites/app_error.dart';
import 'package:agri_connect/domain/entites/params/register_params.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository _authRepository;

  RegisterCubit(this._authRepository) : super(RegisterInitial());

  Future<void> register(RegisterParams params) async {
    emit(RegisterLoading());
    final res = await _authRepository.register(params.toMap());
    emit(res.fold((l) => RegisterFailure(l), (r) => RegisterSuccess()));
  }
}
