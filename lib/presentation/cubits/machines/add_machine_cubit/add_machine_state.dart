part of 'add_machine_cubit.dart';

abstract class AddMachineState extends Equatable {
  const AddMachineState();
}

class AddMachineInitial extends AddMachineState {
  @override
  List<Object> get props => [];
}

class AddMachineLoading extends AddMachineState {
  @override
  List<Object> get props => [];
}

class AddMachineSuccess extends AddMachineState {
  @override
  List<Object> get props => [];
}

class AddMachineFailure extends AddMachineState {
  final AppError error;

  const AddMachineFailure(this.error);

  @override
  List<Object> get props => [error];
}
