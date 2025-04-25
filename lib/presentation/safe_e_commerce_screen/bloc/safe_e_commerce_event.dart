part of 'safe_e_commerce_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SafeECommerce widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SafeECommerceEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SafeECommerce widget is first created.
class SafeECommerceInitialEvent extends SafeECommerceEvent {
  @override
  List<Object?> get props => [];
}
