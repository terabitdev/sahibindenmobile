part of 'my_product_offers_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyProductOffers widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyProductOffersEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyProductOffers widget is first created.
class MyProductOffersInitialEvent extends MyProductOffersEvent {
  @override
  List<Object?> get props => [];
}
