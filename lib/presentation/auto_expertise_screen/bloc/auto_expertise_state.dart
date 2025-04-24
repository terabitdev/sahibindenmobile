part of 'auto_expertise_bloc.dart';

/// Represents the state of AutoExpertise in the application.
/// // ignore_for_file: must_be_immutable
class AutoExpertiseState extends Equatable {
  AutoExpertiseState(
      {this.formtextfillController,
      this.formtextfill1Controller,
      this.autoExpertiseModelObj});
  TextEditingController? formtextfillController;
  TextEditingController? formtextfill1Controller;
  AutoExpertiseModel? autoExpertiseModelObj;
  @override
  List<Object?> get props =>
      [formtextfillController, formtextfill1Controller, autoExpertiseModelObj];
  AutoExpertiseState copyWith({
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
    AutoExpertiseModel? autoExpertiseModelObj,
  }) {
    return AutoExpertiseState(
      formtextfillController:
          formtextfillController ?? this.formtextfillController,
      formtextfill1Controller:
          formtextfill1Controller ?? this.formtextfill1Controller,
      autoExpertiseModelObj:
          autoExpertiseModelObj ?? this.autoExpertiseModelObj,
    );
  }
}
