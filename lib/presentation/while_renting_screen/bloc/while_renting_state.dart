part of 'while_renting_bloc.dart';

/// Represents the state of WhileRenting in the application.

// ignore_for_file: must_be_immutable
class WhileRentingState extends Equatable {
  WhileRentingState({this.whileRentingModelObj});

  WhileRentingModel? whileRentingModelObj;

  @override
  List<Object?> get props => [whileRentingModelObj];
  WhileRentingState copyWith({WhileRentingModel? whileRentingModelObj}) {
    return WhileRentingState(
      whileRentingModelObj: whileRentingModelObj ?? this.whileRentingModelObj,
    );
  }
}
