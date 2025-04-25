part of 'my_delivery_billing_address_one_bloc.dart';

/// Represents the state of MyDeliveryBillingAddressOne in the application.

// ignore_for_file: must_be_immutable
class MyDeliveryBillingAddressOneState extends Equatable {
  MyDeliveryBillingAddressOneState(
      {this.searchController, this.myDeliveryBillingAddressOneModelObj});

  TextEditingController? searchController;

  MyDeliveryBillingAddressOneModel? myDeliveryBillingAddressOneModelObj;

  @override
  List<Object?> get props =>
      [searchController, myDeliveryBillingAddressOneModelObj];
  MyDeliveryBillingAddressOneState copyWith({
    TextEditingController? searchController,
    MyDeliveryBillingAddressOneModel? myDeliveryBillingAddressOneModelObj,
  }) {
    return MyDeliveryBillingAddressOneState(
      searchController: searchController ?? this.searchController,
      myDeliveryBillingAddressOneModelObj:
      myDeliveryBillingAddressOneModelObj ??
          this.myDeliveryBillingAddressOneModelObj,
    );
  }
}
