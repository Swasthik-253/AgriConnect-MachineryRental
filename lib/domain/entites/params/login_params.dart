import 'package:dart_mappable/dart_mappable.dart';

part 'login_params.mapper.dart';

@MappableClass()
class LoginParams with LoginParamsMappable {
  final String email;
  final String password;

  LoginParams({required this.email, required this.password});
}
