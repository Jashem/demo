part of 'new_shop_bloc.dart';

abstract class NewShopEvent extends Equatable {
  const NewShopEvent();

  @override
  List<Object> get props => [];
}

class NewShopFetched extends NewShopEvent {}
