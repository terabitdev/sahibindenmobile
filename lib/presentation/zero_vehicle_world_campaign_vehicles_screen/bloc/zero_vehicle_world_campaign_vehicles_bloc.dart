import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listdfsk_e5_suv_item_model.dart';
import '../models/zero_vehicle_world_campaign_vehicles_model.dart';
part 'zero_vehicle_world_campaign_vehicles_event.dart';
part 'zero_vehicle_world_campaign_vehicles_state.dart';

/// A bloc that manages the state of a ZeroVehicleWorldCampaignVehicles according to the event that is dispatched to it.
class ZeroVehicleWorldCampaignVehiclesBloc extends Bloc<
    ZeroVehicleWorldCampaignVehiclesEvent,
    ZeroVehicleWorldCampaignVehiclesState> {
  ZeroVehicleWorldCampaignVehiclesBloc(
      ZeroVehicleWorldCampaignVehiclesState initialState)
      : super(initialState) {
    on<ZeroVehicleWorldCampaignVehiclesInitialEvent>(_onInitialize);
  }

  _onInitialize(
      ZeroVehicleWorldCampaignVehiclesInitialEvent event,
      Emitter<ZeroVehicleWorldCampaignVehiclesState> emit,
      ) async {
    emit(
      state.copyWith(
        zeroVehicleWorldCampaignVehiclesModelObj:
        state.zeroVehicleWorldCampaignVehiclesModelObj?.copyWith(
          listdfskE5SuvItemList: fillListdfskE5SuvItemList(),
        ),
      ),
    );
  }

  List<ListdfskE5SuvItemModel> fillListdfskE5SuvItemList() {
    return [
      ListdfskE5SuvItemModel(
          dfske5suv: "lbl_dfsk_e5_suv".tr,
          tlCounter: "lbl_1_790_000_tl".tr,
          thereareone: "msg_there_are_1_different".tr,
          showpricelist: "msg_show_price_list".tr),
      ListdfskE5SuvItemModel(
          dfske5suv: "lbl_dfsk_e5_suv".tr,
          tlCounter: "lbl_1_790_000_tl".tr,
          thereareone: "msg_there_are_1_different".tr,
          showpricelist: "msg_show_price_list".tr)
    ];
  }
}
