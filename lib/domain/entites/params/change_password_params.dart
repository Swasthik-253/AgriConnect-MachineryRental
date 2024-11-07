import 'package:dart_mappable/dart_mappable.dart';

part 'change_password_params.mapper.dart';

@MappableClass()
class ChangePasswordParams with ChangePasswordParamsMappable {
  final String oldPassword;
  final String newPassword;
  final String? email;

  ChangePasswordParams({
    required this.oldPassword,
    required this.newPassword,
    this.email,
  });
}
