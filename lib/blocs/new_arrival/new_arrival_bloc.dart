import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models.dart/product.dart';
import '../../resources/repository.dart';

part 'new_arrival_event.dart';
part 'new_arrival_state.dart';

class NewArrivalBloc extends Bloc<NewArrivalEvent, NewArrivalState> {
  NewArrivalBloc({required this.repository}) : super(NewArrivalState());

  final Repository repository;

  @override
  Stream<NewArrivalState> mapEventToState(
    NewArrivalEvent event,
  ) async* {
    if (event is NewArrivalFetched) {
      yield await _mapNewArrivalFetchedToState(state);
    }
  }

  Future<NewArrivalState> _mapNewArrivalFetchedToState(
      NewArrivalState state) async {
    try {
      var arrivals = await repository.fetchNewArrivals();
      return state.copyWith(
        status: NewArrivalStatus.success,
        arrivals: arrivals,
      );
    } on Exception {
      return state.copyWith(status: NewArrivalStatus.failure);
    }
  }
}
