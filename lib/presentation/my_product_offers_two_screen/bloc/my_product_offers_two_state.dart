part of 'my_product_offers_two_bloc.dart';

/// Represents the state of MyProductOffersTwo in the application.

// ignore_for_file: must_be_immutable
class MyProductOffersTwoState extends Equatable {
  MyProductOffersTwoState({this.myProductOffersTwoModelObj});

  MyProductOffersTwoModel? myProductOffersTwoModelObj;

  @override
  List<Object?> get props => [myProductOffersTwoModelObj];
  MyProductOffersTwoState copyWith(
      {MyProductOffersTwoModel? myProductOffersTwoModelObj}) {
    return MyProductOffersTwoState(
      myProductOffersTwoModelObj:
      myProductOffersTwoModelObj ?? this.myProductOffersTwoModelObj,
    );
  }
}
