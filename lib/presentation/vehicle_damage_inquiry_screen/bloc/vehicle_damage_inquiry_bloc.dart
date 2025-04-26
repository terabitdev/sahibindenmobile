import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listwhatisvehic_item_model.dart';
import '../models/vehicle_damage_inquiry_model.dart';
import '../models/vehicledamage_tab_model.dart';
part 'vehicle_damage_inquiry_event.dart';
part 'vehicle_damage_inquiry_state.dart';

/// A bloc that manages the state of a VehicleDamageInquiry according to the event that is dispatched to it.
class VehicleDamageInquiryBloc
    extends Bloc<VehicleDamageInquiryEvent, VehicleDamageInquiryState> {
  VehicleDamageInquiryBloc(VehicleDamageInquiryState initialState)
      : super(initialState) {
    on<VehicleDamageInquiryInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _onInitialize(
      VehicleDamageInquiryInitialEvent event,
      Emitter<VehicleDamageInquiryState> emit,
      ) async {
    emit(
      state.copyWith(
        platenumberController: TextEditingController(),
        radioGroup: "",
      ),
    );
    emit(
      state.copyWith(
        vehicledamageTabModelObj: state.vehicledamageTabModelObj?.copyWith(
          listwhatisvehicItemList: fillListwhatisvehicItemList(),
        ),
      ),
    );
  }

  _changeRadioButton(
      ChangeRadioButtonEvent event,
      Emitter<VehicleDamageInquiryState> emit,
      ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<ListwhatisvehicItemModel> fillListwhatisvehicItemList() {
    return [
      ListwhatisvehicItemModel(
          whatisvehicle: "msg_what_is_vehicle".tr,
          description: "msg_it_is_a_service".tr),
      ListwhatisvehicItemModel(
          whatisvehicle: "msg_what_is_vehicle2".tr,
          description: "msg_it_is_a_service2".tr)
    ];
  }
}
