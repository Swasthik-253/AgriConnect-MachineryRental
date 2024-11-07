import 'package:agri_connect/di/get_it.dart';
import 'package:agri_connect/domain/entites/params/get_orders_params.dart';
import 'package:agri_connect/presentation/cubits/auth/auth_cubit/auth_cubit.dart';
import 'package:agri_connect/presentation/cubits/orders/get_orders_cubit/get_orders_cubit.dart';
import 'package:agri_connect/presentation/pages/orders/widgets/order_card.dart';
import 'package:agri_connect/presentation/widgets/app_error_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class OrdersPage extends StatelessWidget implements AutoRouteWrapper {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    String user = context.read<AuthCubit>().state.user!.email;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Orders"),
        ),
        body: BlocBuilder<GetOrdersCubit, GetOrdersState>(
          builder: (context, state) {
            if (state is GetOrdersLoading) {
              print("Loading");
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is GetOrdersSuccess) {
              print("Success");
              if (state.orders.isEmpty) {
                return const Center(
                  child: Text("No orders found"),
                );
              }
              return ListView.builder(
                itemCount: state.orders.length,
                itemBuilder: (context, index) {
                  final order = state.orders[index];
                  return OrderCard(order: order);
                },
              );
            } else if (state is GetOrdersFailure) {
              print("Error");
              return Center(
                child: AppErrorWidget(
                  error: state.error,
                  onRetry: () {
                    context
                        .read<GetOrdersCubit>()
                        .getOrders(GetOrderParams(email: user));
                  },
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ));
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    String email = context.read<AuthCubit>().state.user!.email;
    return BlocProvider(
      create: (_) =>
          getIt<GetOrdersCubit>()..getOrders(GetOrderParams(email: email)),
      child: this,
    );
  }
}
