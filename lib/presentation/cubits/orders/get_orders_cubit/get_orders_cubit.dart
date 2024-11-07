import 'package:agri_connect/domain/entites/params/get_orders_params.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/models/customer_order.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../../../domain/entites/app_error.dart';

part 'get_orders_state.dart';

@injectable
class GetOrdersCubit extends Cubit<GetOrdersState> {
  final UserRepository _userRepository;

  GetOrdersCubit(this._userRepository) : super(GetOrdersInitial());

  void getOrders(GetOrderParams params) async {
    // return _mockGetOrders();
    emit(GetOrdersLoading());
    try {
      final res = await _userRepository.getOrders(params.toMap());
      emit(res.fold((l) => GetOrdersFailure(l), (r) => GetOrdersSuccess(r)));
    } catch (e) {
      print(e);
    }
  }

//   Future<void> _mockGetOrders() async {
//     emit(GetOrdersLoading());
//     await Future.delayed(const Duration(seconds: 2));
//     final orders = List.generate(
//       10,
//       (index) => CustomerOrder.test(),
//     );
//     emit(GetOrdersSuccess(orders));
//   }
}
