import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listbmwseeklogo_item_model.dart';
import '../models/zero_vehicle_world_zero_vehicle_model.dart';
import '../models/zerovehicle_tab_model.dart';
part 'zero_vehicle_world_zero_vehicle_event.dart';
part 'zero_vehicle_world_zero_vehicle_state.dart';

/// A bloc that manages the state of a ZeroVehicleWorldZeroVehicle according to the event that is dispatched to it.
class ZeroVehicleWorldZeroVehicleBloc extends Bloc<
    ZeroVehicleWorldZeroVehicleEvent, ZeroVehicleWorldZeroVehicleState> {
  ZeroVehicleWorldZeroVehicleBloc(ZeroVehicleWorldZeroVehicleState initialState)
      : super(initialState) {
    on<ZeroVehicleWorldZeroVehicleInitialEvent>(_onInitialize);
  }

  _onInitialize(
      ZeroVehicleWorldZeroVehicleInitialEvent event,
      Emitter<ZeroVehicleWorldZeroVehicleState> emit,
      ) async {
    emit(
      state.copyWith(
        zerovehicleTabModelObj: state.zerovehicleTabModelObj?.copyWith(
          listbmwseeklogoItemList: fillListbmwseeklogoItemList(),
        ),
      ),
    );
  }

  List<ListbmwseeklogoItemModel> fillListbmwseeklogoItemList() {
    return [
      ListbmwseeklogoItemModel(bmwseeklogo: ImageConstant.imgBmwSeeklogo4),
      ListbmwseeklogoItemModel(bmwseeklogo: ImageConstant.img36052630611452734),
      ListbmwseeklogoItemModel(bmwseeklogo: ImageConstant.imgAudiSeeklogo2),
      ListbmwseeklogoItemModel(bmwseeklogo: ImageConstant.img36052630611452734),
      ListbmwseeklogoItemModel(bmwseeklogo: ImageConstant.imgBmwSeeklogo4),
      ListbmwseeklogoItemModel(bmwseeklogo: ImageConstant.img36052630611452734),
      ListbmwseeklogoItemModel(bmwseeklogo: ImageConstant.imgAudiSeeklogo2),
      ListbmwseeklogoItemModel(bmwseeklogo: ImageConstant.img36052630611452734),
      ListbmwseeklogoItemModel(bmwseeklogo: ImageConstant.imgBmwSeeklogo4)
    ];
  }
}
