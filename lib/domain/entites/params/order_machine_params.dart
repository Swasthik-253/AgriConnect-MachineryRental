import 'package:dart_mappable/dart_mappable.dart';

import '../../../data/models/machine.dart';

part 'order_machine_params.mapper.dart';

@MappableClass()
class OrderMachineParams with OrderMachineParamsMappable {
  final Machine machine;
  final String useremail;

  OrderMachineParams({
    required this.machine,
    required this.useremail,
  });
}
