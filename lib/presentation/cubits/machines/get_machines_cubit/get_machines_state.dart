part of 'get_machines_cubit.dart';

abstract class GetMachinesState extends Equatable {
  const GetMachinesState();
}

class GetMachinesInitial extends GetMachinesState {
  @override
  List<Object> get props => [];
}

class GetMachinesLoading extends GetMachinesState {
  @override
  List<Object> get props => [];
}

class GetMachinesLoaded extends GetMachinesState {
  final List<Machine> machines;

  const GetMachinesLoaded(this.machines);

  @override
  List<Object> get props => [machines];
}

class GetMachinesError extends GetMachinesState {
  final AppError error;

  const GetMachinesError(this.error);

  @override
  List<Object> get props => [error];
}
