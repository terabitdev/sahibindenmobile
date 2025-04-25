part of 'my_product_offers_bloc.dart';

/// Represents the state of MyProductOffers in the application.

// ignore_for_file: must_be_immutable
class MyProductOffersState extends Equatable {
  MyProductOffersState(
      {this.myproductTwoTabModelObj, this.myProductOffersModelObj});

  MyProductOffersModel? myProductOffersModelObj;

  MyproductTwoTabModel? myproductTwoTabModelObj;

  @override
  List<Object?> get props => [myproductTwoTabModelObj, myProductOffersModelObj];
  MyProductOffersState copyWith({
    MyproductTwoTabModel? myproductTwoTabModelObj,
    MyProductOffersModel? myProductOffersModelObj,
  }) {
    return MyProductOffersState(
      myproductTwoTabModelObj:
      myproductTwoTabModelObj ?? this.myproductTwoTabModelObj,
      myProductOffersModelObj:
      myProductOffersModelObj ?? this.myProductOffersModelObj,
    );
  }
}
