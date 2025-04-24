import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/account_activities_model.dart';
part 'account_activities_event.dart';
part 'account_activities_state.dart';

/// A bloc that manages the state of AccountActivities according to the event that is dispatched to it.
class AccountActivitiesBloc extends Bloc<AccountActivitiesEvent, AccountActivitiesState> {
  AccountActivitiesBloc(AccountActivitiesState initialState) : super(initialState) {
    on<AccountActivitiesInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
    on<ChangeDateEvent1>(_changeDate1);
  }

  _onInitialize(
      AccountActivitiesInitialEvent event,
      Emitter<AccountActivitiesState> emit,
      ) async {
    emit(
      state.copyWith(
        dateController: TextEditingController(),
        dateoneController: TextEditingController(),
      ),
    );

    emit(
      state.copyWith(
        accountActivitiesModelObj: state.accountActivitiesModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
          dropdownItemList1: fillDropdownItemList1(),
          dropdownItemList2: fillDropdownItemList2(),
        ),
      ),
    );
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      ),
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      ),
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList2() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      ),
    ];
  }

  _changeDate(
      ChangeDateEvent event,
      Emitter<AccountActivitiesState> emit,
      ) {
    emit(
      state.copyWith(
        accountActivitiesModelObj: state.accountActivitiesModelObj?.copyWith(
          selectedDate: event.date,
        ),
      ),
    );
  }

  _changeDate1(
      ChangeDateEvent1 event,
      Emitter<AccountActivitiesState> emit,
      ) {
    emit(
      state.copyWith(
        accountActivitiesModelObj: state.accountActivitiesModelObj?.copyWith(
          selectedDateOne: event.date,
        ),
      ),
    );
  }
}
