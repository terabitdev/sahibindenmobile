import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'gridwings_tower_item_model.dart';

/// This class is used in the [scrollview_one_tab_page] screen.

// ignore_for_file: must_be_immutable
class ScrollviewOneTabModel extends Equatable {
  ScrollviewOneTabModel({this.gridwingsTowerItemList = const []});

  List<GridwingsTowerItemModel> gridwingsTowerItemList;

  ScrollviewOneTabModel copyWith(
      {List<GridwingsTowerItemModel>? gridwingsTowerItemList}) {
    return ScrollviewOneTabModel(
      gridwingsTowerItemList:
      gridwingsTowerItemList ?? this.gridwingsTowerItemList,
    );
  }

  @override
  List<Object?> get props => [gridwingsTowerItemList];
}
