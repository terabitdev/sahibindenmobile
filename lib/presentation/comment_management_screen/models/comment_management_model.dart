import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listproductsi_item_model.dart';

/// This class defines the variables used in the [comment_management_screen],/// and is typically used to hold data that is passed between different parts of the application.// ignore_for_file: must_be_immutable
class CommentManagementModel extends Equatable {
  CommentManagementModel({this.listproductsiItemList = const []});
  List<ListproductsiItemModel> listproductsiItemList;
  CommentManagementModel copyWith(
      {List<ListproductsiItemModel>? listproductsiItemList}) {
    return CommentManagementModel(
      listproductsiItemList:
          listproductsiItemList ?? this.listproductsiItemList,
    );
  }

  @override
  List<Object?> get props => [listproductsiItemList];
}
