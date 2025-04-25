import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'expandablelistw3_item_model.dart';
import 'expandablelistw_item_model.dart';

/// This class defines the variables used in the [my_gallery_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class MyGalleryModel extends Equatable {
  MyGalleryModel(
      {this.expandablelistwItemList = const [],
        this.expandablelistw3ItemList = const []});

  List<ExpandablelistwItemModel> expandablelistwItemList;

  List<Expandablelistw3ItemModel> expandablelistw3ItemList;

  MyGalleryModel copyWith({
    List<ExpandablelistwItemModel>? expandablelistwItemList,
    List<Expandablelistw3ItemModel>? expandablelistw3ItemList,
  }) {
    return MyGalleryModel(
      expandablelistwItemList:
      expandablelistwItemList ?? this.expandablelistwItemList,
      expandablelistw3ItemList:
      expandablelistw3ItemList ?? this.expandablelistw3ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [expandablelistwItemList, expandablelistw3ItemList];
}
