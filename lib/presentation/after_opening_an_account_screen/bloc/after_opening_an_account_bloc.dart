import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/after_opening_an_account_model.dart';
import '../models/expandablelisth_item_model.dart';
part 'after_opening_an_account_event.dart';
part 'after_opening_an_account_state.dart';

/// A bloc that manages the state of a AfterOpeningAnAccount according to the event that is dispatched to it.
class AfterOpeningAnAccountBloc    extends Bloc<AfterOpeningAnAccountEvent, AfterOpeningAnAccountState> {  AfterOpeningAnAccountBloc(AfterOpeningAnAccountState initialState)      : super(initialState) {    on<AfterOpeningAnAccountInitialEvent>(_onInitialize);    on<UpdateExpandableListEvent>(_updateExpandableList);  }  _onInitialize(    AfterOpeningAnAccountInitialEvent event,    Emitter<AfterOpeningAnAccountState> emit,  ) async {    emit(      state.copyWith(        searchController: TextEditingController(),      ),    );  }