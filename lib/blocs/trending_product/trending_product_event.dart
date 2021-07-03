part of 'trending_product_bloc.dart';

abstract class TrendingProductEvent extends Equatable {
  const TrendingProductEvent();

  @override
  List<Object> get props => [];
}

class TrendingProductFetched extends TrendingProductEvent {}
