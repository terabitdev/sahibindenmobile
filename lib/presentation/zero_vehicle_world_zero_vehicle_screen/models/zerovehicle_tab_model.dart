import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listbmwseeklogo_item_model.dart';

/// This class is used in the [zerovehicle_tab_page] screen.

// ignore_for_file: must_be_immutable
class ZerovehicleTabModel extends Equatable {
  ZerovehicleTabModel({this.listbmwseeklogoItemList = const []});

  List<ListbmwseeklogoItemModel> listbmwseeklogoItemList;

  ZerovehicleTabModel copyWith(
      {List<ListbmwseeklogoItemModel>? listbmwseeklogoItemList}) {
    return ZerovehicleTabModel(
      listbmwseeklogoItemList:
      listbmwseeklogoItemList ?? this.listbmwseeklogoItemList,
    );
  }

  @override
  List<Object?> get props => [listbmwseeklogoItemList];
}
