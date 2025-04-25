part of 'product_details_bloc.dart';

/// Represents the state of ProductDetails in the application.

// ignore_for_file: must_be_immutable
class ProductDetailsState extends Equatable {
  ProductDetailsState({this.productDetailsModelObj});

  ProductDetailsModel? productDetailsModelObj;

  @override
  List<Object?> get props => [productDetailsModelObj];
  ProductDetailsState copyWith({ProductDetailsModel? productDetailsModelObj}) {
    return ProductDetailsState(
      productDetailsModelObj:
      productDetailsModelObj ?? this.productDetailsModelObj,
    );
  }
}
