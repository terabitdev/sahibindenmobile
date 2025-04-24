import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/comment_management_model.dart';
import '../models/listproductsi_item_model.dart';
part 'comment_management_event.dart';
part 'comment_management_state.dart';

/// A bloc that manages the state of a CommentManagement according to the event that is dispatched to it.
class CommentManagementBloc
    extends Bloc<CommentManagementEvent, CommentManagementState> {
  CommentManagementBloc(CommentManagementState initialState)
      : super(initialState) {
    on<CommentManagementInitialEvent>(_onInitialize);
  }
  _onInitialize(
    CommentManagementInitialEvent event,
    Emitter<CommentManagementState> emit,
  ) async {
    emit(
      state.copyWith(
        commentManagementModelObj: state.commentManagementModelObj?.copyWith(
          listproductsiItemList: fillListproductsiItemList(),
        ),
      ),
    );
  }

  List<ListproductsiItemModel> fillListproductsiItemList() {
    return [
      ListproductsiItemModel(
          image: ImageConstant.imgHome,
          productsi: "msg_products_i_purchased".tr),
      ListproductsiItemModel(
          image: ImageConstant.imgFloatingIcon,
          productsi: "lbl_products_i_sell".tr)
    ];
  }
}
