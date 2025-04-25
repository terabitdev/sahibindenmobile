part of 'products_i_purchased_bloc.dart';

/// Represents the state of ProductsIPurchased in the application.

// ignore_for_file: must_be_immutable
class ProductsIPurchasedState extends Equatable {
  ProductsIPurchasedState({this.productsIPurchasedModelObj});

  ProductsIPurchasedModel? productsIPurchasedModelObj;

  @override
  List<Object?> get props => [productsIPurchasedModelObj];
  ProductsIPurchasedState copyWith(
      {ProductsIPurchasedModel? productsIPurchasedModelObj}) {
    return ProductsIPurchasedState(
      productsIPurchasedModelObj:
      productsIPurchasedModelObj ?? this.productsIPurchasedModelObj,
    );
  }
}
