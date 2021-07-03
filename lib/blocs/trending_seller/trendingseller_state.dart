part of 'trendingseller_bloc.dart';

enum TrendingsellerStatus { initial, success, failure }

class TrendingsellerState extends Equatable {
  const TrendingsellerState({
    this.status = TrendingsellerStatus.initial,
    this.sellers = const [],
  });

  final TrendingsellerStatus status;
  final List<Seller> sellers;

  TrendingsellerState copyWith({
    TrendingsellerStatus? status,
    List<Seller>? sellers,
  }) {
    return TrendingsellerState(
      status: status ?? this.status,
      sellers: sellers ?? this.sellers,
    );
  }

  @override
  String toString() {
    return "TrendingsellerState { status: $status, sellers: ${sellers.length}}";
  }

  @override
  List<Object> get props => [status, sellers];
}
