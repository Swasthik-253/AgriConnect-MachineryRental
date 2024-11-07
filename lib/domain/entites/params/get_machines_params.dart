import 'package:dart_mappable/dart_mappable.dart';

part 'get_machines_params.mapper.dart';

@MappableClass()
class GetMachinesParams with GetMachinesParamsMappable {
  final String cropName;

  GetMachinesParams({required this.cropName});
}
