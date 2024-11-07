import 'package:dart_mappable/dart_mappable.dart';

part 'get_orders_params.mapper.dart';

@MappableClass()
class GetOrderParams with GetOrderParamsMappable {
  final String email;

  GetOrderParams({
    required this.email,
  });
}
