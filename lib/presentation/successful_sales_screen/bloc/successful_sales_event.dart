part of 'successful_sales_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SuccessfulSales widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SuccessfulSalesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SuccessfulSales widget is first created.
class SuccessfulSalesInitialEvent extends SuccessfulSalesEvent {
  @override
  List<Object?> get props => [];
}
