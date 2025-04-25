import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/my_product_offers_one_model.dart';
part 'my_product_offers_one_event.dart';
part 'my_product_offers_one_state.dart';

/// A bloc that manages the state of a MyProductOffersOne according to the event that is dispatched to it.
class MyProductOffersOneBloc
    extends Bloc<MyProductOffersOneEvent, MyProductOffersOneState> {
  MyProductOffersOneBloc(MyProductOffersOneState initialState)
      : super(initialState) {
    on<MyProductOffersOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
      MyProductOffersOneInitialEvent event,
      Emitter<MyProductOffersOneState> emit,
      ) async {}
}
