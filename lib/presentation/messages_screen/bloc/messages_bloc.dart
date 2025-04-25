import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/category_item_model.dart';
import '../models/messages_model.dart';
import '../models/messages_three_item_model.dart';
import '../models/scrollview_tab1_model.dart';
part 'messages_event.dart';
part 'messages_state.dart';

/// A bloc that manages the state of a Messages according to the event that is dispatched to it.
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc(MessagesState initialState) : super(initialState) {
    on<MessagesInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
      MessagesInitialEvent event,
      Emitter<MessagesState> emit,
      ) async {
    emit(
      state.copyWith(
        scrollviewTab1ModelObj: state.scrollviewTab1ModelObj?.copyWith(
          messagesThreeItemList: fillMessagesThreeItemList(),
          categoryItemList: fillCategoryItemList(),
        ),
      ),
    );
  }

  _updateChipView(
      UpdateChipViewEvent event,
      Emitter<MessagesState> emit,
      ) {
    List<CategoryItemModel> newList = List<CategoryItemModel>.from(
        state.scrollviewTab1ModelObj!.categoryItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        scrollviewTab1ModelObj:
        state.scrollviewTab1ModelObj?.copyWith(categoryItemList: newList),
      ),
    );
  }

  List<MessagesThreeItemModel> fillMessagesThreeItemList() {
    return [
      MessagesThreeItemModel(
          emmettPerry: "lbl_emmett_perry".tr, time: "lbl_10_mins_ago".tr),
      MessagesThreeItemModel(),
      MessagesThreeItemModel()
    ];
  }

  List<CategoryItemModel> fillCategoryItemList() {
    return [
      CategoryItemModel(buttoncategory: "lbl_all".tr),
      CategoryItemModel(buttoncategory: "lbl_review".tr),
      CategoryItemModel(buttoncategory: "lbl_sold".tr),
      CategoryItemModel(buttoncategory: "lbl_house".tr),
      CategoryItemModel(buttoncategory: "lbl_house".tr)
    ];
  }
}
