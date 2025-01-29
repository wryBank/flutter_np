import 'package:flutter_application_1/logic/blocs/cart/cart_event.dart';
import 'package:flutter_application_1/logic/blocs/cart/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBloc extends Bloc<CartEvent, CartModelState> {
  CartBloc() : super(CartModelState().initial()) {
    on<CartEventAdd>((event, emit) {
      emit(state.copyWith(count: state.count + event.item, total: state.total + 1));
    });
    on<CartEventRemove>((event, emit) {
      emit(state.copyWith(count: state.count - event.item, total: state.total - 1));
    });
    on<AddtoCart>((event, emit) {
      emit(state.copyWith(cartitem: state.cartitem + event.cartitem));
    });
  }
}
