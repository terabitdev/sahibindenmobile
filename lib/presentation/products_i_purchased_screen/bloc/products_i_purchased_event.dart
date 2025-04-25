part of 'products_i_purchased_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductsIPurchased widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ProductsIPurchasedEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ProductsIPurchased widget is first created.
class ProductsIPurchasedInitialEvent extends ProductsIPurchasedEvent {
  @override
  List<Object?> get props => [];
}
