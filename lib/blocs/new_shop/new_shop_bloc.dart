import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models.dart/models.dart';
import '../../resources/repository.dart';

part 'new_shop_event.dart';
part 'new_shop_state.dart';

class NewShopBloc extends Bloc<NewShopEvent, NewShopState> {
  NewShopBloc({required this.repository}) : super(NewShopState());

  final Repository repository;

  @override
  Stream<NewShopState> mapEventToState(
    NewShopEvent event,
  ) async* {
    if (event is NewShopFetched) {
      yield await _mapNewShopFetchedToState(state);
    }
  }

  Future<NewShopState> _mapNewShopFetchedToState(NewShopState state) async {
    try {
      var shops = await repository.fetchNewShops();
      return state.copyWith(
        status: NewShopStatus.success,
        shops: shops,
      );
    } on Exception {
      return state.copyWith(
        status: NewShopStatus.failure,
      );
    }
  }
}
