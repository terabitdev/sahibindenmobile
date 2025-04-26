import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/while_buying_item_model.dart';
import '../models/while_buying_model.dart';
part 'while_buying_event.dart';
part 'while_buying_state.dart';

/// A bloc that manages the state of a WhileBuying according to the event that is dispatched to it.
class WhileBuyingBloc extends Bloc<WhileBuyingEvent, WhileBuyingState> {
  WhileBuyingBloc(WhileBuyingState initialState) : super(initialState) {
    on<WhileBuyingInitialEvent>(_onInitialize);
  }

  _onInitialize(
      WhileBuyingInitialEvent event,
      Emitter<WhileBuyingState> emit,
      ) async {
    emit(
      state.copyWith(
        whileBuyingModelObj: state.whileBuyingModelObj?.copyWith(
          whileBuyingItemList: fillWhileBuyingItemList(),
        ),
      ),
    );
  }

  List<WhileBuyingItemModel> fillWhileBuyingItemList() {
    return [
      WhileBuyingItemModel(
          image: ImageConstant.imgFloatingIcon,
          realestate: "msg_real_estate_expertise".tr),
      WhileBuyingItemModel(
          image: ImageConstant.imgHome, realestate: "msg_real_estate_index".tr),
      WhileBuyingItemModel(
          image: ImageConstant.imgHome, realestate: "lbl_credit".tr),
      WhileBuyingItemModel(
          image: ImageConstant.imgHome,
          realestate: "msg_real_estate_dictionary".tr),
      WhileBuyingItemModel()
    ];
  }
}
