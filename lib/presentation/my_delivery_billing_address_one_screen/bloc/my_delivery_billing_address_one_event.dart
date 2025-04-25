part of 'my_delivery_billing_address_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyDeliveryBillingAddressOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyDeliveryBillingAddressOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyDeliveryBillingAddressOne widget is first created.
class MyDeliveryBillingAddressOneInitialEvent
    extends MyDeliveryBillingAddressOneEvent {
  @override
  List<Object?> get props => [];
}
