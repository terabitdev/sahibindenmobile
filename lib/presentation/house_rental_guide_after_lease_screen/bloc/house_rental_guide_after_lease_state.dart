part of 'house_rental_guide_after_lease_bloc.dart';

/// Represents the state of HouseRentalGuideAfterLease in the application.

// ignore_for_file: must_be_immutable
class HouseRentalGuideAfterLeaseState extends Equatable {
  HouseRentalGuideAfterLeaseState(
      {this.searchController, this.houseRentalGuideAfterLeaseModelObj});

  TextEditingController? searchController;

  HouseRentalGuideAfterLeaseModel? houseRentalGuideAfterLeaseModelObj;

  @override
  List<Object?> get props =>
      [searchController, houseRentalGuideAfterLeaseModelObj];
  HouseRentalGuideAfterLeaseState copyWith({
    TextEditingController? searchController,
    HouseRentalGuideAfterLeaseModel? houseRentalGuideAfterLeaseModelObj,
  }) {
    return HouseRentalGuideAfterLeaseState(
      searchController: searchController ?? this.searchController,
      houseRentalGuideAfterLeaseModelObj: houseRentalGuideAfterLeaseModelObj ??
          this.houseRentalGuideAfterLeaseModelObj,
    );
  }
}
