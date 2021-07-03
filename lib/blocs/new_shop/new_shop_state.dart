part of 'new_shop_bloc.dart';

enum NewShopStatus { initial, success, failure }

class NewShopState extends Equatable {
  const NewShopState({
    this.status = NewShopStatus.initial,
    this.shops = const [],
  });

  final NewShopStatus status;
  final List<Seller> shops;

  NewShopState copyWith({
    NewShopStatus? status,
    List<Seller>? shops,
  }) {
    return NewShopState(
      status: status ?? this.status,
      shops: shops ?? this.shops,
    );
  }

  @override
  List<Object> get props => [status, shops];
}
