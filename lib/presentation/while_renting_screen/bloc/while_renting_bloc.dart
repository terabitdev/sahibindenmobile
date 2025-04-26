import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/while_renting_item_model.dart';
import '../models/while_renting_model.dart';
part 'while_renting_event.dart';
part 'while_renting_state.dart';

/// A bloc that manages the state of a WhileRenting according to the event that is dispatched to it.
class WhileRentingBloc extends Bloc<WhileRentingEvent, WhileRentingState> {
  WhileRentingBloc(WhileRentingState initialState) : super(initialState) {
    on<WhileRentingInitialEvent>(_onInitialize);
  }

  _onInitialize(
      WhileRentingInitialEvent event,
      Emitter<WhileRentingState> emit,
      ) async {
    emit(
      state.copyWith(
        whileRentingModelObj: state.whileRentingModelObj?.copyWith(
          whileRentingItemList: fillWhileRentingItemList(),
        ),
      ),
    );
  }

  List<WhileRentingItemModel> fillWhileRentingItemList() {
    return [
      WhileRentingItemModel(realestate: "msg_real_estate_index".tr),
      WhileRentingItemModel(realestate: "msg_real_estate_dictionary".tr),
      WhileRentingItemModel()
    ];
  }
}
