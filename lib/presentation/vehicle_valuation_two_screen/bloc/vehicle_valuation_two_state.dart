part of 'vehicle_valuation_two_bloc.dart';

/// Represents the state of VehicleValuationTwo in the application.

// ignore_for_file: must_be_immutable
class VehicleValuationTwoState extends Equatable {
  VehicleValuationTwoState(
      {this.formtextfillController,
        this.zipcodeController,
        this.formtextfill1Controller,
        this.vehicleValuationTwoModelObj});

  TextEditingController? formtextfillController;

  TextEditingController? zipcodeController;

  TextEditingController? formtextfill1Controller;

  VehicleValuationTwoModel? vehicleValuationTwoModelObj;

  @override
  List<Object?> get props => [
    formtextfillController,
    zipcodeController,
    formtextfill1Controller,
    vehicleValuationTwoModelObj
  ];
  VehicleValuationTwoState copyWith({
    TextEditingController? formtextfillController,
    TextEditingController? zipcodeController,
    TextEditingController? formtextfill1Controller,
    VehicleValuationTwoModel? vehicleValuationTwoModelObj,
  }) {
    return VehicleValuationTwoState(
      formtextfillController:
      formtextfillController ?? this.formtextfillController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      formtextfill1Controller:
      formtextfill1Controller ?? this.formtextfill1Controller,
      vehicleValuationTwoModelObj:
      vehicleValuationTwoModelObj ?? this.vehicleValuationTwoModelObj,
    );
  }
}
