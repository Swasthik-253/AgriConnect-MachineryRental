import 'dart:convert';
import 'dart:io';

import 'package:agri_connect/domain/entites/app_error.dart';
import 'package:agri_connect/domain/entites/params/add_machine_params.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/repositories/machine_repository.dart';

part 'add_machine_state.dart';

@injectable
class AddMachineCubit extends Cubit<AddMachineState> {
  final MachineRepository _machineRepository;

  AddMachineCubit(this._machineRepository) : super(AddMachineInitial());

  Future<void> addMachine(AddMachineParams params,
      {required File image}) async {
    emit(AddMachineLoading());
    final paramsWithImage =
        params.copyWith(imageInBase64: base64Encode(await image.readAsBytes()));
    final res = await _machineRepository.addMachine(paramsWithImage.toMap());
    emit(res.fold((l) => AddMachineFailure(l), (r) => AddMachineSuccess()));
  }
}
