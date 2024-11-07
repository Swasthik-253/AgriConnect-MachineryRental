part of 'edit_profile_cubit.dart';

abstract class EditProfileState extends Equatable {
  const EditProfileState();
}

class EditProfileInitial extends EditProfileState {
  @override
  List<Object> get props => [];
}

class EditProfileLoading extends EditProfileState {
  @override
  List<Object> get props => [];
}

class EditProfileSuccess extends EditProfileState {
  @override
  List<Object> get props => [];
}

class EditProfileFailure extends EditProfileState {
  final AppError error;

  const EditProfileFailure(this.error);

  @override
  List<Object> get props => [error];
}
