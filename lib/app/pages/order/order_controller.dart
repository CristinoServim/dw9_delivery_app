import 'package:dw9_delivery_app/app/dto/order_productDto.dart';
import 'package:dw9_delivery_app/app/pages/order/order_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderController extends Cubit<OrderState> {
  OrderController() : super(const OrderState.inital());

  void load(List<OrderProductDto> products) {
    emit(state.copyWith(orderProducts: products));
  }
}
