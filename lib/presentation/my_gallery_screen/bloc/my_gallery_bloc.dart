import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/expandablelistw3_item_model.dart';
import '../models/expandablelistw_item_model.dart';
import '../models/my_gallery_model.dart';
part 'my_gallery_event.dart';
part 'my_gallery_state.dart';

/// A bloc that manages the state of a MyGallery according to the event that is dispatched to it.
class MyGalleryBloc extends Bloc<MyGalleryEvent, MyGalleryState> {
  MyGalleryBloc(MyGalleryState initialState) : super(initialState) {
    on<MyGalleryInitialEvent>(_onInitialize);
    on<UpdateExpandableListEvent>(_updateExpandableList);
    on<UpdateExpandableList1Event>(_updateExpandableList1);
  }

  _onInitialize(
      MyGalleryInitialEvent event,
      Emitter<MyGalleryState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
  }

  _updateExpandableList(
      UpdateExpandableListEvent event,
      Emitter<MyGalleryState> emit,
      ) {
    List<ExpandablelistwItemModel> newList =
    List<ExpandablelistwItemModel>.from(
        state.myGalleryModelObj!.expandablelistwItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        myGalleryModelObj:
        state.myGalleryModelObj?.copyWith(expandablelistwItemList: newList),
      ),
    );
  }

  _updateExpandableList1(
      UpdateExpandableList1Event event,
      Emitter<MyGalleryState> emit,
      ) {
    List<Expandablelistw3ItemModel> newList =
    List<Expandablelistw3ItemModel>.from(
        state.myGalleryModelObj!.expandablelistw3ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        myGalleryModelObj: state.myGalleryModelObj
            ?.copyWith(expandablelistw3ItemList: newList),
      ),
    );
  }
}
