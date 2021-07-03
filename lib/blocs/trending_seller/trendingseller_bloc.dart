import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models.dart/models.dart';
import '../../resources/repository.dart';

part 'trendingseller_event.dart';
part 'trendingseller_state.dart';

class TrendingsellerBloc
    extends Bloc<TrendingsellerEvent, TrendingsellerState> {
  TrendingsellerBloc({required this.repository})
      : super(const TrendingsellerState());

  final Repository repository;

  @override
  Stream<TrendingsellerState> mapEventToState(
    TrendingsellerEvent event,
  ) async* {
    if (event is TrendingSellerFetched) {
      yield await _mapTrendingSellerFetchedToState(state);
    }
  }

  Future<TrendingsellerState> _mapTrendingSellerFetchedToState(
      TrendingsellerState state) async {
    try {
      final sellers = await repository.fetchTrendingSellers();
      return state.copyWith(
        status: TrendingsellerStatus.success,
        sellers: sellers,
      );
    } on Exception {
      return state.copyWith(status: TrendingsellerStatus.failure);
    }
  }
}
