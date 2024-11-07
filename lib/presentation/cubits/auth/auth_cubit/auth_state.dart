part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  final User? user;
  const AuthState({this.user});
}

class Authenticated extends AuthState {
  const Authenticated(User user) : super(user: user);

  @override
  List<Object?> get props => [user];
}

class Unauthenticated extends AuthState {
  @override
  List<Object> get props => [];
}
