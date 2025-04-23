import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/account_transcation_model.dart';
import '../models/expandablelistw_item_model.dart';

part 'account_transcation_event.dart';
part 'account_transcation_state.dart';

/// A bloc that manages the state of AccountTranscation according to the event that is dispatched to it.
class AccountTranscationBloc extends Bloc<AccountTranscationEvent, AccountTranscationState> {
  AccountTranscationBloc(AccountTranscationState initialState) : super(initialState) {
    on<AccountTranscationInitialEvent>(_onInitialize);
    on<UpdateExpandableListEvent>(_updateExpandableList);
  }

  _onInitialize(
      AccountTranscationInitialEvent event,
      Emitter<AccountTranscationState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
  }

  _updateExpandableList(
      UpdateExpandableListEvent event,
      Emitter<AccountTranscationState> emit,
      ) {
    List<ExpandablelistwItemModel> newList =
    List<ExpandablelistwItemModel>.from(state.accountTranscationModelObj!.expandablelistwItemList);

    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );

    emit(
      state.copyWith(
        accountTranscationModelObj: state.accountTranscationModelObj?.copyWith(
          expandablelistwItemList: newList,
        ),
      ),
    );
  }
}
