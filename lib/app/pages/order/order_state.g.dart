// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_state.dart';

// **************************************************************************
// MatchExtensionGenerator
// **************************************************************************

extension OrderStatusMatch on OrderStatus {
  T match<T>({required T Function() inital, required T Function() loaded}) {
    final v = this;
    if (v == OrderStatus.inital) {
      return inital();
    }

    if (v == OrderStatus.loaded) {
      return loaded();
    }

    throw Exception('OrderStatus.match failed, found no match for: $this');
  }

  T matchAny<T>(
      {required T Function() any, T Function()? inital, T Function()? loaded}) {
    final v = this;
    if (v == OrderStatus.inital && inital != null) {
      return inital();
    }

    if (v == OrderStatus.loaded && loaded != null) {
      return loaded();
    }

    return any();
  }
}
