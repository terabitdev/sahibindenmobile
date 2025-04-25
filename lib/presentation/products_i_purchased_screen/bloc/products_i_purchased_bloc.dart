import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/products_i_purchased_model.dart';
part 'products_i_purchased_event.dart';
part 'products_i_purchased_state.dart';

/// A bloc that manages the state of a ProductsIPurchased according to the event that is dispatched to it.
class ProductsIPurchasedBloc
    extends Bloc<ProductsIPurchasedEvent, ProductsIPurchasedState> {
  ProductsIPurchasedBloc(ProductsIPurchasedState initialState)
      : super(initialState) {
    on<ProductsIPurchasedInitialEvent>(_onInitialize);
  }

  _onInitialize(
      ProductsIPurchasedInitialEvent event,
      Emitter<ProductsIPurchasedState> emit,
      ) async {}
}
