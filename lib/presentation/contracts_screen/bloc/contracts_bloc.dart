import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/contracts_model.dart';
import '../models/expandablelisti_item_model.dart';
part 'contracts_event.dart';
part 'contracts_state.dart';

/// A bloc that manages the state of a Contracts according to the event that is dispatched to it.
class ContractsBloc extends Bloc<ContractsEvent, ContractsState> {
  ContractsBloc(ContractsState initialState) : super(initialState) {
    on<ContractsInitialEvent>(_onInitialize);
    on<UpdateExpandableListEvent>(_updateExpandableList);
  }

  _onInitialize(
      ContractsInitialEvent event,
      Emitter<ContractsState> emit,
      ) async {}
  _updateExpandableList(
      UpdateExpandableListEvent event,
      Emitter<ContractsState> emit,
      ) {
    List<ExpandablelistiItemModel> newList =
    List<ExpandablelistiItemModel>.from(
        state.contractsModelObj!.expandablelistiItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        contractsModelObj:
        state.contractsModelObj?.copyWith(expandablelistiItemList: newList),
      ),
    );
  }
}
