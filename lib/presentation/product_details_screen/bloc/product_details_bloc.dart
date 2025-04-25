import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/facilities_item_model.dart';
import '../models/product_details_item_model.dart';
import '../models/product_details_model.dart';
part 'product_details_event.dart';
part 'product_details_state.dart';

/// A bloc that manages the state of a ProductDetails according to the event that is dispatched to it.
class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  ProductDetailsBloc(ProductDetailsState initialState) : super(initialState) {
    on<ProductDetailsInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
      ProductDetailsInitialEvent event,
      Emitter<ProductDetailsState> emit,
      ) async {
    emit(
      state.copyWith(
        productDetailsModelObj: state.productDetailsModelObj?.copyWith(
          facilitiesItemList: fillFacilitiesItemList(),
          productDetailsItemList: fillProductDetailsItemList(),
        ),
      ),
    );
  }

  _updateChipView(
      UpdateChipViewEvent event,
      Emitter<ProductDetailsState> emit,
      ) {
    List<FacilitiesItemModel> newList = List<FacilitiesItemModel>.from(
        state.productDetailsModelObj!.facilitiesItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        productDetailsModelObj:
        state.productDetailsModelObj?.copyWith(facilitiesItemList: newList),
      ),
    );
  }

  List<FacilitiesItemModel> fillFacilitiesItemList() {
    return [
      FacilitiesItemModel(layoutThree: "lbl_2_bedroom".tr),
      FacilitiesItemModel(layoutThree: "lbl_1_bathroom".tr),
      FacilitiesItemModel(layoutThree: "lbl_2_bedroom".tr)
    ];
  }

  List<ProductDetailsItemModel> fillProductDetailsItemList() {
    return [
      ProductDetailsItemModel(shapeOne: ImageConstant.imgShape60x60),
      ProductDetailsItemModel(shapeOne: ImageConstant.imgShape5),
      ProductDetailsItemModel(),
      ProductDetailsItemModel()
    ];
  }
}
