part of 'completed_orders_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CompletedOrders widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CompletedOrdersEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CompletedOrders widget is first created.
class CompletedOrdersInitialEvent extends CompletedOrdersEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date

// ignore_for_file: must_be_immutable
class ChangeDateEvent extends CompletedOrdersEvent {
  ChangeDateEvent({required this.date});

  DateTime date;

  @override
  List<Object?> get props => [date];
}
