part of 'my_product_not_on_sales_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyProductNotOnSales widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyProductNotOnSalesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyProductNotOnSales widget is first created.
class MyProductNotOnSalesInitialEvent extends MyProductNotOnSalesEvent {
  @override
  List<Object?> get props => [];
}
