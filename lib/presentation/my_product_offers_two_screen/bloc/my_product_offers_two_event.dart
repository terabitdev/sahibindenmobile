part of 'my_product_offers_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyProductOffersTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyProductOffersTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyProductOffersTwo widget is first created.
class MyProductOffersTwoInitialEvent extends MyProductOffersTwoEvent {
  @override
  List<Object?> get props => [];
}
