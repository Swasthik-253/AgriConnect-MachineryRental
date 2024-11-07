import 'package:agri_connect/domain/entites/params/order_machine_params.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/models/customer_order.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../../../domain/entites/app_error.dart';

part 'order_machine_state.dart';

@injectable
class OrderMachineCubit extends Cubit<OrderMachineState> {
  final UserRepository _userRepository;

  OrderMachineCubit(this._userRepository) : super(OrderMachineInitial());

  void orderMachine(OrderMachineParams params) async {
    // return _mockOrderMachine();
    emit(OrderMachineLoading());
    final res = await _userRepository.orderMachine(params.toMap());
    print(res);
    emit(
        res.fold((l) => OrderMachineFailure(l), (r) => OrderMachineSuccess(r)));
  }

  // void _mockOrderMachine() async {
  //   emit(OrderMachineLoading());
  //   await Future.delayed(const Duration(seconds: 2));
  //   final order = CustomerOrder.test();
  //   emit(OrderMachineSuccess(order));
  // }
}
