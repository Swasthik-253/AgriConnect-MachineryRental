part of 'get_orders_cubit.dart';

abstract class GetOrdersState extends Equatable {
  const GetOrdersState();
}

class GetOrdersInitial extends GetOrdersState {
  @override
  List<Object> get props => [];
}

class GetOrdersLoading extends GetOrdersState {
  @override
  List<Object> get props => [];
}

class GetOrdersSuccess extends GetOrdersState {
  final List<CustomerOrder> orders;
  const GetOrdersSuccess(this.orders);
  @override
  List<Object> get props => [orders];
}

class GetOrdersFailure extends GetOrdersState {
  final AppError error;
  const GetOrdersFailure(this.error);
  @override
  List<Object> get props => [error];
}
