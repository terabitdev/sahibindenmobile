part of 'my_delivery_billing_address_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyDeliveryBillingAddressFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyDeliveryBillingAddressFourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyDeliveryBillingAddressFour widget is first created.
class MyDeliveryBillingAddressFourInitialEvent
    extends MyDeliveryBillingAddressFourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBoxEvent extends MyDeliveryBillingAddressFourEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBox1Event extends MyDeliveryBillingAddressFourEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
