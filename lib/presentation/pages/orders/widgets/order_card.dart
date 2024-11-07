import 'package:agri_connect/data/models/customer_order.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final CustomerOrder order;
  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(order.machine),
        subtitle: Text(order.formattedDate),
      ),
    );
  }
}
