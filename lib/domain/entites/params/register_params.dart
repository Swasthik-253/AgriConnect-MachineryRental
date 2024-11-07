import 'package:dart_mappable/dart_mappable.dart';

part 'register_params.mapper.dart';

@MappableClass()
class RegisterParams with RegisterParamsMappable {
  final String fullName;
  final String email;
  final String phoneNumber;
  final String address;
  final String password;

  RegisterParams({
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.address,
  });
}
