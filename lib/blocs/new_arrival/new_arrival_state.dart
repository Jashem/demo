part of 'new_arrival_bloc.dart';

enum NewArrivalStatus { initial, success, failure }

class NewArrivalState extends Equatable {
  const NewArrivalState({
    this.status = NewArrivalStatus.initial,
    this.arrivals = const [],
  });

  final NewArrivalStatus status;
  final List<Product> arrivals;

  NewArrivalState copyWith({
    NewArrivalStatus? status,
    List<Product>? arrivals,
  }) {
    return NewArrivalState(
      status: status ?? this.status,
      arrivals: arrivals ?? this.arrivals,
    );
  }

  @override
  List<Object> get props => [status, arrivals];
}
