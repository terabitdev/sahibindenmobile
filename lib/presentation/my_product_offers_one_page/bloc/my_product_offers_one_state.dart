part of 'my_product_offers_one_bloc.dart';

/// Represents the state of MyProductOffersOne in the application.

// ignore_for_file: must_be_immutable
class MyProductOffersOneState extends Equatable {
  MyProductOffersOneState({this.myProductOffersOneModelObj});

  MyProductOffersOneModel? myProductOffersOneModelObj;

  @override
  List<Object?> get props => [myProductOffersOneModelObj];
  MyProductOffersOneState copyWith(
      {MyProductOffersOneModel? myProductOffersOneModelObj}) {
    return MyProductOffersOneState(
      myProductOffersOneModelObj:
      myProductOffersOneModelObj ?? this.myProductOffersOneModelObj,
    );
  }
}
