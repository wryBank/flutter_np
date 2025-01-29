class CartModelState {
  final int count;
  final double total;
  final int cartitem;

  CartModelState({this.count = 0, this.total = 0, this.cartitem = 0});

  CartModelState initial() {
    return CartModelState(count: 0, total: 0, cartitem: 0);
  }

  CartModelState copyWith({int? count, double? total, int? cartitem}) {
    return CartModelState(
      count: count ?? this.count,
      total: total ?? this.total,
      cartitem: cartitem ?? this.cartitem,
    );
  }
}
