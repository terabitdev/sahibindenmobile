part of 'home_rental_guide_after_lease_bloc.dart';

/// Represents the state of HomeRentalGuideAfterLease in the application.

// ignore_for_file: must_be_immutable
class HomeRentalGuideAfterLeaseState extends Equatable {
  HomeRentalGuideAfterLeaseState({this.homeRentalGuideAfterLeaseModelObj});

  HomeRentalGuideAfterLeaseModel? homeRentalGuideAfterLeaseModelObj;

  @override
  List<Object?> get props => [homeRentalGuideAfterLeaseModelObj];
  HomeRentalGuideAfterLeaseState copyWith(
      {HomeRentalGuideAfterLeaseModel? homeRentalGuideAfterLeaseModelObj}) {
    return HomeRentalGuideAfterLeaseState(
      homeRentalGuideAfterLeaseModelObj: homeRentalGuideAfterLeaseModelObj ??
          this.homeRentalGuideAfterLeaseModelObj,
    );
  }
}
