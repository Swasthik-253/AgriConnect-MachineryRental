import 'dart:convert';

import 'package:agri_connect/di/get_it.dart';
import 'package:agri_connect/domain/entites/params/order_machine_params.dart';
import 'package:agri_connect/presentation/cubits/auth/auth_cubit/auth_cubit.dart';
import 'package:agri_connect/presentation/cubits/orders/order_machine_cubit/order_machine_cubit.dart';
import 'package:agri_connect/presentation/widgets/primary_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../data/models/machine.dart';

@RoutePage()
class MachineDetailsPage extends StatelessWidget implements AutoRouteWrapper {
  final Machine machine;

  const MachineDetailsPage({super.key, required this.machine});

  @override
  Widget build(BuildContext context) {
    String user = context.read<AuthCubit>().state.user!.email;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Machine Details'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.memory(
                        base64Decode(machine.imageInBase64),
                        fit: BoxFit.cover,
                        frameBuilder:
                            (context, child, frame, wasSynchronouslyLoaded) {
                          if (wasSynchronouslyLoaded) {
                            return child;
                          }
                          return AnimatedOpacity(
                            opacity: frame == null ? 0 : 1,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeOut,
                            child: child,
                          );
                        },
                      ),
                    ),
                    const Gap(20),
                    Text(
                      machine.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Gap(20),
                    _TwoRow(title: 'Owner Name', value: machine.owner),
                    const Gap(8),
                    _TwoRow(title: 'Location', value: machine.location),
                    const Gap(8),
                    _TwoRow(title: 'Price', value: machine.price.toString()),
                    const Gap(8),
                    _TwoRow(
                        title: 'Owner Contact', value: machine.ownerContact),
                    const Gap(20),
                    const Spacer(),
                    BlocConsumer<OrderMachineCubit, OrderMachineState>(
                      listener: (context, state) {
                        // if (state is OrderMachineSuccess) {
                        context.showSuccessBar(
                            content: const Text(
                                'Machine order placed successfully'));
                        // }

                        // if (state is OrderMachineFailure) {
                        //   context.showErrorBar(
                        //       content: Text(state.error.message));
                        // }
                      },
                      builder: (context, state) {
                        return PrimaryButton(
                          isLoading: state is OrderMachineLoading,
                          child: const Text('Order'),
                          onPressed: () {
                            context
                                .read<OrderMachineCubit>()
                                .orderMachine(OrderMachineParams(
                                  machine: machine,
                                  useremail: user,
                                ));
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OrderMachineCubit>(),
      child: this,
    );
  }
}

class _TwoRow extends StatelessWidget {
  final String title;
  final String value;

  const _TwoRow({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(title),
        ),
        const Gap(8),
        Expanded(
          child: Text(value),
        ),
      ],
    );
  }
}
