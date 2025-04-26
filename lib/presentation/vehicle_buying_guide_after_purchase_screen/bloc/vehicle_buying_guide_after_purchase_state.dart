part of 'vehicle_buying_guide_after_purchase_bloc.dart';

/// Represents the state of VehicleBuyingGuideAfterPurchase in the application.

// ignore_for_file: must_be_immutable
class VehicleBuyingGuideAfterPurchaseState extends Equatable {
  VehicleBuyingGuideAfterPurchaseState(
      {this.searchController, this.vehicleBuyingGuideAfterPurchaseModelObj});

  TextEditingController? searchController;

  VehicleBuyingGuideAfterPurchaseModel? vehicleBuyingGuideAfterPurchaseModelObj;

  @override
  List<Object?> get props =>
      [searchController, vehicleBuyingGuideAfterPurchaseModelObj];
  VehicleBuyingGuideAfterPurchaseState copyWith({
    TextEditingController? searchController,
    VehicleBuyingGuideAfterPurchaseModel?
    vehicleBuyingGuideAfterPurchaseModelObj,
  }) {
    return VehicleBuyingGuideAfterPurchaseState(
      searchController: searchController ?? this.searchController,
      vehicleBuyingGuideAfterPurchaseModelObj:
      vehicleBuyingGuideAfterPurchaseModelObj ??
          this.vehicleBuyingGuideAfterPurchaseModelObj,
    );
  }
}
