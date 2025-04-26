part of 'safe_e_commerce_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SafeECommerceOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SafeECommerceOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SafeECommerceOne widget is first created.
class SafeECommerceOneInitialEvent extends SafeECommerceOneEvent {
  @override
  List<Object?> get props => [];
}
