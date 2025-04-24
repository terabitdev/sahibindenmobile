import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/corporate_account_model.dart';
import '../models/expandablelistw_item_model.dart';
part 'corporate_account_event.dart';
part 'corporate_account_state.dart';

/// A bloc that manages the state of a CorporateAccount according to the event that is dispatched to it.
class CorporateAccountBloc
    extends Bloc<CorporateAccountEvent, CorporateAccountState> {
  CorporateAccountBloc(CorporateAccountState initialState)
      : super(initialState) {
    on<CorporateAccountInitialEvent>(_onInitialize);
    on<UpdateExpandableListEvent>(_updateExpandableList);
  }

  _onInitialize(
      CorporateAccountInitialEvent event,
      Emitter<CorporateAccountState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
  }

  _updateExpandableList(
      UpdateExpandableListEvent event,
      Emitter<CorporateAccountState> emit,
      ) {
    List<ExpandablelistwItemModel> newList =
    List<ExpandablelistwItemModel>.from(
        state.corporateAccountModelObj!.expandablelistwItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        corporateAccountModelObj: state.corporateAccountModelObj
            ?.copyWith(expandablelistwItemList: newList),
      ),
    );
  }
}
