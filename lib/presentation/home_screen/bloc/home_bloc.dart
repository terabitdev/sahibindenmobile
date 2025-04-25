import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/gridwings_tower_item_model.dart';
import '../models/home_initial_model.dart';
import '../models/home_model.dart';
import '../models/layout_item_model.dart';
import '../models/listreal_estate_item_model.dart';
import '../models/scrollview_one_tab_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
      HomeInitialEvent event,
      Emitter<HomeState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        scrollviewOneTabModelObj: state.scrollviewOneTabModelObj?.copyWith(
          gridwingsTowerItemList: fillGridwingsTowerItemList(),
        ),
        homeInitialModelObj: state.homeInitialModelObj?.copyWith(
          layoutItemList: fillLayoutItemList(),
          listrealEstateItemList: fillListrealEstateItemList(),
        ),
      ),
    );
  }

  List<GridwingsTowerItemModel> fillGridwingsTowerItemList() {
    return [
      GridwingsTowerItemModel(
          wingsTowerOne: ImageConstant.img21491947661,
          favoriteOne: ImageConstant.imgFavorite,
          price: "lbl_220".tr,
          month: "lbl_month".tr,
          wingsTowerTwo: "lbl_wings_tower".tr,
          text: "lbl_4_9".tr,
          imageOne: ImageConstant.imgLinkedinBlueGray80003,
          jakartaindonesi: "msg_jakarta_indonesia".tr),
      GridwingsTowerItemModel(
          wingsTowerOne: ImageConstant.imgGreyBlackMoto160x144,
          favoriteOne: ImageConstant.imgFavoritePrimary,
          price: "lbl_271".tr,
          month: "lbl_month".tr,
          wingsTowerTwo: "lbl_mill_sper_house".tr,
          text: "lbl_4_8".tr,
          imageOne: ImageConstant.imgLinkedinBlueGray80003,
          jakartaindonesi: "msg_jakarta_indonesia".tr),
      GridwingsTowerItemModel(
          wingsTowerOne: ImageConstant.imgShape160x144,
          favoriteOne: ImageConstant.imgFavoritePrimary,
          price: "lbl_235".tr,
          month: "lbl_month".tr,
          wingsTowerTwo: "lbl_bungalow_house".tr,
          text: "lbl_4_7".tr,
          imageOne: ImageConstant.imgLinkedinDeepOrangeA200,
          jakartaindonesi: "msg_jakarta_indonesia".tr),
      GridwingsTowerItemModel(
          wingsTowerOne: ImageConstant.imgShape4,
          favoriteOne: ImageConstant.imgFavoritePrimary,
          price: "lbl_290".tr,
          month: "lbl_month".tr,
          wingsTowerTwo: "lbl_sky_dandelions".tr,
          text: "lbl_4_9".tr,
          imageOne: ImageConstant.imgLinkedinDeepOrangeA200,
          jakartaindonesi: "msg_jakarta_indonesia".tr)
    ];
  }

  List<LayoutItemModel> fillLayoutItemList() {
    return [
      LayoutItemModel(
          buttonfavorite: ImageConstant.imgButtonFavorite,
          image: ImageConstant.imgGreyBlackMoto,
          skydandelionsap: "msg_sky_dandelions_apartment".tr,
          text: "lbl_4_9".tr,
          jakartaindonesi: ImageConstant.imgLinkedinBlueGray80003,
          jakartaindonesi1: "msg_jakarta_indonesia".tr,
          price: "lbl_290".tr,
          month: "lbl_month".tr),
      LayoutItemModel(
          skydandelionsap: "msg_sky_dandelions_apartment".tr,
          text: "lbl_4_2".tr,
          jakartaindonesi: ImageConstant.imgLinkedinDeepOrangeA200,
          jakartaindonesi1: "msg_jakarta_indonesia".tr,
          price: "lbl_220".tr,
          month: "lbl_month".tr)
    ];
  }

  List<ListrealEstateItemModel> fillListrealEstateItemList() {
    return [
      ListrealEstateItemModel(
          realEstateOne: ImageConstant.imgHome,
          realestate: "lbl_real_estate".tr,
          residential: "msg_residential_commercial".tr),
      ListrealEstateItemModel(
          realEstateOne: ImageConstant.imgFloatingIcon,
          realestate: "lbl_vehicles".tr,
          residential: "msg_cars_off_road".tr),
      ListrealEstateItemModel(
          realEstateOne: ImageConstant.imgFrame,
          realestate: "lbl_vehicles_parts".tr,
          residential: "msg_cars_off_road".tr),
      ListrealEstateItemModel(
          realEstateOne: ImageConstant.imgTelevision,
          realestate: "msg_used_brand_new".tr,
          residential: "msg_computers_cell".tr)
    ];
  }
}
