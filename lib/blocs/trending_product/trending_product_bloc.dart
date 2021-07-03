import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models.dart/models.dart';
import '../../resources/repository.dart';

part 'trending_product_event.dart';
part 'trending_product_state.dart';

class TrendingProductBloc
    extends Bloc<TrendingProductEvent, TrendingProductState> {
  TrendingProductBloc({required this.repository})
      : super(TrendingProductState());

  final Repository repository;

  @override
  Stream<TrendingProductState> mapEventToState(
    TrendingProductEvent event,
  ) async* {
    if (event is TrendingProductFetched) {
      yield await _mapTrendingProductFetchedToState(state);
    }
  }

  Future<TrendingProductState> _mapTrendingProductFetchedToState(
      TrendingProductState state) async {
    try {
      final products = await repository.fetchTrendingProducts();
      return state.copyWith(
        status: TrendingProductStatus.success,
        products: products,
      );
    } on Exception {
      return state.copyWith(status: TrendingProductStatus.failure);
    }
  }
}
