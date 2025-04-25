import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/my_product_offers_model.dart';
import '../models/myproduct_two_tab_model.dart';
part 'my_product_offers_event.dart';
part 'my_product_offers_state.dart';

/// A bloc that manages the state of a MyProductOffers according to the event that is dispatched to it.
class MyProductOffersBloc
    extends Bloc<MyProductOffersEvent, MyProductOffersState> {
  MyProductOffersBloc(MyProductOffersState initialState) : super(initialState) {
    on<MyProductOffersInitialEvent>(_onInitialize);
  }

  _onInitialize(
      MyProductOffersInitialEvent event,
      Emitter<MyProductOffersState> emit,
      ) async {}
}
