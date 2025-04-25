import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/expandablelistw_item_model.dart';
import '../models/help_guide_model.dart';
part 'help_guide_event.dart';
part 'help_guide_state.dart';

/// A bloc that manages the state of a HelpGuide according to the event that is dispatched to it.
class HelpGuideBloc extends Bloc<HelpGuideEvent, HelpGuideState> {
  HelpGuideBloc(HelpGuideState initialState) : super(initialState) {
    on<HelpGuideInitialEvent>(_onInitialize);
    on<UpdateExpandableListEvent>(_updateExpandableList);
  }

  _onInitialize(
      HelpGuideInitialEvent event,
      Emitter<HelpGuideState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
  }

  _updateExpandableList(
      UpdateExpandableListEvent event,
      Emitter<HelpGuideState> emit,
      ) {
    List<ExpandablelistwItemModel> newList =
    List<ExpandablelistwItemModel>.from(
        state.helpGuideModelObj!.expandablelistwItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        helpGuideModelObj:
        state.helpGuideModelObj?.copyWith(expandablelistwItemList: newList),
      ),
    );
  }
}
