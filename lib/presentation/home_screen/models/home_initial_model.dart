import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'layout_item_model.dart';
import 'listreal_estate_item_model.dart';

/// This class is used in the [home_initial_page] screen.

// ignore_for_file: must_be_immutable
class HomeInitialModel extends Equatable {
  HomeInitialModel(
      {this.listrealEstateItemList = const [], this.layoutItemList = const []});

  List<ListrealEstateItemModel> listrealEstateItemList;

  List<LayoutItemModel> layoutItemList;

  HomeInitialModel copyWith({
    List<ListrealEstateItemModel>? listrealEstateItemList,
    List<LayoutItemModel>? layoutItemList,
  }) {
    return HomeInitialModel(
      listrealEstateItemList:
      listrealEstateItemList ?? this.listrealEstateItemList,
      layoutItemList: layoutItemList ?? this.layoutItemList,
    );
  }

  @override
  List<Object?> get props => [listrealEstateItemList, layoutItemList];
}
