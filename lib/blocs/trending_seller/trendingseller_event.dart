part of 'trendingseller_bloc.dart';

abstract class TrendingsellerEvent extends Equatable {
  const TrendingsellerEvent();

  @override
  List<Object> get props => [];
}

class TrendingSellerFetched extends TrendingsellerEvent {}
