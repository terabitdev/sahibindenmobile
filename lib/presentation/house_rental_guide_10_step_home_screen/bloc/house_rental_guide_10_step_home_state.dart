part of 'house_rental_guide_10_step_home_bloc.dart';

/// Represents the state of HouseRentalGuide10StepHome in the application.

// ignore_for_file: must_be_immutable
class HouseRentalGuide10StepHomeState extends Equatable {
  HouseRentalGuide10StepHomeState({this.houseRentalGuide10StepHomeModelObj});

  HouseRentalGuide10StepHomeModel? houseRentalGuide10StepHomeModelObj;

  @override
  List<Object?> get props => [houseRentalGuide10StepHomeModelObj];
  HouseRentalGuide10StepHomeState copyWith(
      {HouseRentalGuide10StepHomeModel? houseRentalGuide10StepHomeModelObj}) {
    return HouseRentalGuide10StepHomeState(
      houseRentalGuide10StepHomeModelObj: houseRentalGuide10StepHomeModelObj ??
          this.houseRentalGuide10StepHomeModelObj,
    );
  }
}
