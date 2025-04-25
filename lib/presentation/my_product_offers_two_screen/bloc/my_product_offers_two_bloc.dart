import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/my_product_offers_two_model.dart';
part 'my_product_offers_two_event.dart';
part 'my_product_offers_two_state.dart';

/// A bloc that manages the state of a MyProductOffersTwo according to the event that is dispatched to it.
class MyProductOffersTwoBloc
    extends Bloc<MyProductOffersTwoEvent, MyProductOffersTwoState> {
  MyProductOffersTwoBloc(MyProductOffersTwoState initialState)
      : super(initialState) {
    on<MyProductOffersTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
      MyProductOffersTwoInitialEvent event,
      Emitter<MyProductOffersTwoState> emit,
      ) async {}
}
