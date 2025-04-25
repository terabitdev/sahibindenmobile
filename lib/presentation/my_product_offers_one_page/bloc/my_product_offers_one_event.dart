part of 'my_product_offers_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyProductOffersOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyProductOffersOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyProductOffersOne widget is first created.
class MyProductOffersOneInitialEvent extends MyProductOffersOneEvent {
  @override
  List<Object?> get props => [];
}
