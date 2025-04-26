import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/while_selling_item_model.dart';
import '../models/while_selling_model.dart';
part 'while_selling_event.dart';
part 'while_selling_state.dart';

/// A bloc that manages the state of a WhileSelling according to the event that is dispatched to it.
class WhileSellingBloc extends Bloc<WhileSellingEvent, WhileSellingState> {
  WhileSellingBloc(WhileSellingState initialState) : super(initialState) {
    on<WhileSellingInitialEvent>(_onInitialize);
  }

  _onInitialize(
      WhileSellingInitialEvent event,
      Emitter<WhileSellingState> emit,
      ) async {
    emit(
      state.copyWith(
        whileSellingModelObj: state.whileSellingModelObj?.copyWith(
          whileSellingItemList: fillWhileSellingItemList(),
        ),
      ),
    );
  }

  List<WhileSellingItemModel> fillWhileSellingItemList() {
    return [
      WhileSellingItemModel(realestate: "msg_real_estate_index".tr),
      WhileSellingItemModel(realestate: "msg_real_estate_sales".tr),
      WhileSellingItemModel(realestate: "msg_real_estate_dictionary".tr)
    ];
  }
}
