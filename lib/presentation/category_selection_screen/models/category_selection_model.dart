import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listall_real_item_model.dart';
import 'listpaint_item_model.dart';

/// This class defines the variables used in the [category_selection_screen],
/// and is typically used to hold data that is passed between different parts of the application.
/// // ignore_for_file: must_be_immutable
class CategorySelectionModel extends Equatable {
  CategorySelectionModel(
      {this.listallRealItemList = const [], this.listpaintItemList = const []});
  List<ListallRealItemModel> listallRealItemList;
  List<ListpaintItemModel> listpaintItemList;
  CategorySelectionModel copyWith({
    List<ListallRealItemModel>? listallRealItemList,
    List<ListpaintItemModel>? listpaintItemList,
  }) {
    return CategorySelectionModel(
      listallRealItemList: listallRealItemList ?? this.listallRealItemList,
      listpaintItemList: listpaintItemList ?? this.listpaintItemList,
    );
  }

  @override
  List<Object?> get props => [listallRealItemList, listpaintItemList];
}
