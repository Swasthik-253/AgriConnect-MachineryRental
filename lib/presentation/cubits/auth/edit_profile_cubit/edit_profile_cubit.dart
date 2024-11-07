import 'package:agri_connect/data/repositories/user_repository.dart';
import 'package:agri_connect/domain/entites/app_error.dart';
import 'package:agri_connect/domain/entites/params/edit_profile_params.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_state.dart';

@injectable
class EditProfileCubit extends Cubit<EditProfileState> {
  final UserRepository _userRepository;

  EditProfileCubit(this._userRepository) : super(EditProfileInitial());

  Future<void> editProfile(EditProfileParams params) async {
    emit(EditProfileLoading());
    final result = await _userRepository.editProfile(params.toMap());
    result.fold(
      (error) => emit(EditProfileFailure(error)),
      (_) => emit(EditProfileSuccess()),
    );
  }
}
