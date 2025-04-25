import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/house_rental_guide_10_step_home_model.dart';
import '../models/listdetermineyo_item_model.dart';
part 'house_rental_guide_10_step_home_event.dart';
part 'house_rental_guide_10_step_home_state.dart';

/// A bloc that manages the state of a HouseRentalGuide10StepHome according to the event that is dispatched to it.
class HouseRentalGuide10StepHomeBloc extends Bloc<
    HouseRentalGuide10StepHomeEvent, HouseRentalGuide10StepHomeState> {
  HouseRentalGuide10StepHomeBloc(HouseRentalGuide10StepHomeState initialState)
      : super(initialState) {
    on<HouseRentalGuide10StepHomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
      HouseRentalGuide10StepHomeInitialEvent event,
      Emitter<HouseRentalGuide10StepHomeState> emit,
      ) async {
    emit(
      state.copyWith(
        houseRentalGuide10StepHomeModelObj:
        state.houseRentalGuide10StepHomeModelObj?.copyWith(
          listdetermineyoItemList: fillListdetermineyoItemList(),
        ),
      ),
    );
  }

  List<ListdetermineyoItemModel> fillListdetermineyoItemList() {
    return [
      ListdetermineyoItemModel(
          determineyour: "msg_determine_your_budget".tr,
          description: "msg_by_determining_your".tr,
          detailed: "msg_detailed_information".tr,
          group: "lbl_1".tr),
      ListdetermineyoItemModel(
          determineyour: "msg_choose_a_location".tr,
          description: "msg_you_can_learn_about".tr,
          detailed: "msg_detailed_information".tr,
          group: "lbl_2".tr),
      ListdetermineyoItemModel(
          determineyour: "msg_examine_the_value".tr,
          description: "msg_you_can_easily_examine".tr,
          detailed: "msg_detailed_information".tr,
          group: "lbl_3".tr),
      ListdetermineyoItemModel(
          determineyour: "msg_get_support_from".tr,
          description: "msg_real_estate_consultants2".tr,
          detailed: "msg_detailed_information".tr),
      ListdetermineyoItemModel(
          determineyour: "msg_explore_the_surroundings".tr,
          description: "msg_before_deciding".tr,
          detailed: "msg_detailed_information".tr,
          group: "lbl_5".tr),
      ListdetermineyoItemModel(
          determineyour: "msg_clear_the_deposit".tr,
          description: "msg_when_renting_a_house".tr,
          detailed: "msg_detailed_information".tr,
          group: "lbl_6".tr),
      ListdetermineyoItemModel(
          determineyour: "msg_determine_the_terms".tr,
          description: "msg_if_you_have_decided".tr,
          detailed: "msg_detailed_information".tr,
          group: "lbl_7".tr),
      ListdetermineyoItemModel(
          determineyour: "msg_plan_your_moving".tr,
          description: "msg_planning_and_performing".tr,
          detailed: "msg_detailed_information".tr,
          group: "lbl_8".tr),
      ListdetermineyoItemModel(
          determineyour: "msg_report_change_of".tr,
          description: "msg_after_moving_to".tr,
          detailed: "msg_detailed_information".tr,
          group: "lbl_9".tr),
      ListdetermineyoItemModel(
          determineyour: "msg_don_t_forget_to".tr,
          description: "msg_after_renting_the".tr,
          detailed: "msg_detailed_information".tr,
          group: "lbl_10".tr)
    ];
  }
}
