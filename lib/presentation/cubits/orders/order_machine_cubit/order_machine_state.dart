part of 'order_machine_cubit.dart';

abstract class OrderMachineState extends Equatable {
  const OrderMachineState();
}

class OrderMachineInitial extends OrderMachineState {
  @override
  List<Object> get props => [];
}

class OrderMachineLoading extends OrderMachineState {
  @override
  List<Object> get props => [];
}

class OrderMachineSuccess extends OrderMachineState {
  final CustomerOrder order;
  const OrderMachineSuccess(this.order);
  @override
  List<Object> get props => [order];
}

class OrderMachineFailure extends OrderMachineState {
  final AppError error;
  const OrderMachineFailure(this.error);
  @override
  List<Object> get props => [error];
}
