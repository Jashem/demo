part of 'trending_product_bloc.dart';

enum TrendingProductStatus { initial, success, failure }

class TrendingProductState extends Equatable {
  const TrendingProductState({
    this.products = const [],
    this.status = TrendingProductStatus.initial,
  });

  final TrendingProductStatus status;
  final List<Product> products;

  TrendingProductState copyWith({
    TrendingProductStatus? status,
    List<Product>? products,
  }) {
    return TrendingProductState(
      status: status ?? this.status,
      products: products ?? this.products,
    );
  }

  @override
  String toString() {
    return "TrendingProducState { status: $status, sellers: ${products.length}}";
  }

  @override
  List<Object> get props => [status, products];
}
