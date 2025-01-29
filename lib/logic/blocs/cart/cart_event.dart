import 'package:flutter_application_1/logic/blocs/appbloc.dart';

abstract class CartEvent extends AppEvent {}

class CartEventAdd extends CartEvent {
  final int item;
  CartEventAdd({required this.item});
}

class CartEventRemove extends CartEvent {
  final int item;
  CartEventRemove({required this.item});
}

class AddtoCart extends CartEvent {
  final int cartitem;
  AddtoCart({required this.cartitem});
}
