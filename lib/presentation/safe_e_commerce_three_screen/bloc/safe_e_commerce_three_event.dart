part of 'safe_e_commerce_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SafeECommerceThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SafeECommerceThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SafeECommerceThree widget is first created.
class SafeECommerceThreeInitialEvent extends SafeECommerceThreeEvent {
  @override
  List<Object?> get props => [];
}
