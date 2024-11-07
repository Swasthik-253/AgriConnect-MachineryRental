import 'package:agri_connect/domain/entites/app_error.dart';
import 'package:agri_connect/domain/entites/params/get_machines_params.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/models/machine.dart';
import '../../../../data/repositories/machine_repository.dart';

part 'get_machines_state.dart';

@injectable
class GetMachinesCubit extends Cubit<GetMachinesState> {
  final MachineRepository _machineRepository;

  GetMachinesCubit(this._machineRepository) : super(GetMachinesInitial());

  Future<void> getMachines(GetMachinesParams params) async {
    // return _mockGetMachines();
    emit(GetMachinesLoading());
    final res = await _machineRepository.getMachines(params.toMap());
    emit(res.fold(
      (l) => GetMachinesError(l),
      (r) => GetMachinesLoaded(r),
    ));
  }

  List<Machine> _generateMachines() {
    return List.generate(
      10,
      (index) => Machine.test(),
    );
  }

  Future<void> _mockGetMachines() async {
    emit(GetMachinesLoading());
    await Future.delayed(const Duration(seconds: 2));
    final machines = _generateMachines();
    emit(GetMachinesLoaded(machines));
  }
}
