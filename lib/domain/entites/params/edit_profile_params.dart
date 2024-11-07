import 'package:dart_mappable/dart_mappable.dart';

part 'edit_profile_params.mapper.dart';

@MappableClass()
class EditProfileParams with EditProfileParamsMappable {
  final String fullName;
  final String email;
  final String phoneNumber;
  final String address;
  final String oemail;

  EditProfileParams({
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.oemail,
  });
}
