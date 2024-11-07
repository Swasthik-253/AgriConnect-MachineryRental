import 'package:dart_mappable/dart_mappable.dart';
import 'package:intl/intl.dart';

import 'machine.dart';

part 'customer_order.mapper.dart';

@MappableClass()
class CustomerOrder with CustomerOrderMappable {
  final String id;
  final DateTime orderDate;
  final String machine;

  String get formattedDate =>
      DateFormat('dd MMM yyyy hh:mm a').format(orderDate);

  CustomerOrder({
    required this.id,
    required this.orderDate,
    required this.machine,
  });

//   factory CustomerOrder.test() {
//     return CustomerOrder(
//       id: '1',
//       orderDate: DateTime.now(),
//       machine: Machine.test(),
//     );
//   }
}
