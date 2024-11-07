// machines_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:agri_connect/data/models/crop.dart';
import 'package:agri_connect/di/get_it.dart';
import 'package:agri_connect/domain/entites/params/get_machines_params.dart';
import 'package:agri_connect/presentation/pages/machines/widgets/machine_card.dart';
import 'package:agri_connect/presentation/widgets/app_error_widget.dart';
import '../../cubits/machines/get_machines_cubit/get_machines_cubit.dart';

@RoutePage()
class MachinesPage extends StatelessWidget implements AutoRouteWrapper {
  final Crop crop;

  const MachinesPage({Key? key, required this.crop}) : super(key: key);

  static const List<String> filterOptions = [
    'udupi',
    'pangala',
    'katpadi',
    'padubidri',
    'moodabidri',
    'ucchila',
    'mallar',
    'udyavar',
    'manipal',
    'mangalore'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Machines"),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              _showFilterOptions(context);
            },
          ),
        ],
      ),
      body: BlocBuilder<GetMachinesCubit, GetMachinesState>(
        builder: (context, state) {
          if (state is GetMachinesLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is GetMachinesError) {
            return Center(
              child: AppErrorWidget(
                error: state.error,
                onRetry: () {
                  context
                      .read<GetMachinesCubit>()
                      .getMachines(GetMachinesParams(cropName: crop.name));
                },
              ),
            );
          }
          if (state is GetMachinesLoaded) {
            return GridView.builder(
              itemCount: state.machines.length,
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) => MachineCard(
                machine: state.machines[index],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  void _showFilterOptions(BuildContext context) async {
    final RenderBox filterButton = context.findRenderObject() as RenderBox;
    final Offset filterButtonOffset = filterButton.localToGlobal(Offset.zero);
    final double buttonHeight = filterButton.size.height;

    final String? selectedLocation = await showMenu(
      context: context,
      position: RelativeRect.fromSize(
        Rect.fromPoints(
          filterButtonOffset,
          Offset(
            filterButtonOffset.dx + filterButton.size.width,
            filterButtonOffset.dy + buttonHeight,
          ),
        ),
        Size.zero,
      ),
      items: filterOptions.map((String option) {
        return PopupMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
    );

    if (selectedLocation != null) {
      // Get the current state
      final currentState = context.read<GetMachinesCubit>().state;

      if (currentState is GetMachinesLoaded) {
        // Filter machines based on selected location
        final filteredMachines = currentState.machines
            .where((machine) => machine.location == selectedLocation)
            .toList();

        // Update the UI with filtered machines
        context
            .read<GetMachinesCubit>()
            .emit(GetMachinesLoaded(filteredMachines));
      }
    }
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<GetMachinesCubit>()
        ..getMachines(GetMachinesParams(cropName: crop.name)),
      child: this,
    );
  }
}
