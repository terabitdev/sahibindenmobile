import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listvehicle_item_model.dart';
import '../models/oto360_two_model.dart';
part 'oto360_two_event.dart';
part 'oto360_two_state.dart';

/// A bloc that manages the state of a Oto360Two according to the event that is dispatched to it.
class Oto360TwoBloc extends Bloc<Oto360TwoEvent, Oto360TwoState> {
  Oto360TwoBloc(Oto360TwoState initialState) : super(initialState) {
    on<Oto360TwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
      Oto360TwoInitialEvent event,
      Emitter<Oto360TwoState> emit,
      ) async {
    emit(
      state.copyWith(
        oto360TwoModelObj: state.oto360TwoModelObj?.copyWith(
          listvehicleItemList: fillListvehicleItemList(),
        ),
      ),
    );
  }

  List<ListvehicleItemModel> fillListvehicleItemList() {
    return [
      ListvehicleItemModel(
          vehicle: ImageConstant.imgFloatingIcon,
          vehicle1: "msg_vehicle_valuation2".tr),
      ListvehicleItemModel(
          vehicle: ImageConstant.imgHome, vehicle1: "lbl_auto_expertise".tr),
      ListvehicleItemModel(
          vehicle: ImageConstant.imgHome, vehicle1: "lbl_car_sales_guide".tr),
      ListvehicleItemModel(
          vehicle: ImageConstant.imgHome, vehicle1: "lbl_auto_dictionary2".tr)
    ];
  }
}
