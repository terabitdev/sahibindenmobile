part of 'vehicle_damage_inquiry_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VehicleDamageInquiry widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class VehicleDamageInquiryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the VehicleDamageInquiry widget is first created.
class VehicleDamageInquiryInitialEvent extends VehicleDamageInquiryEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button

// ignore_for_file: must_be_immutable
class ChangeRadioButtonEvent extends VehicleDamageInquiryEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [value];
}
