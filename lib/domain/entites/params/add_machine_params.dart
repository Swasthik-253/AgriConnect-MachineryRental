import 'package:dart_mappable/dart_mappable.dart';

part 'add_machine_params.mapper.dart';

@MappableClass()
class AddMachineParams with AddMachineParamsMappable {
  final String machineName;
  final String crop;
  final String userEmail;
  final String userPhone;
  final double price;
  final String imageInBase64;

  AddMachineParams({
    required this.machineName,
    required this.crop,
    required this.userEmail,
    required this.userPhone,
    required this.price,
    required this.imageInBase64,
  });
}
