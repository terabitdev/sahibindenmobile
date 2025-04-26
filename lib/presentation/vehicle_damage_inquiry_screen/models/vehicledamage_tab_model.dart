import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listwhatisvehic_item_model.dart';

/// This class is used in the [vehicledamage_tab_page] screen.

// ignore_for_file: must_be_immutable
class VehicledamageTabModel extends Equatable {
  VehicledamageTabModel({this.listwhatisvehicItemList = const []});

  List<ListwhatisvehicItemModel> listwhatisvehicItemList;

  VehicledamageTabModel copyWith(
      {List<ListwhatisvehicItemModel>? listwhatisvehicItemList}) {
    return VehicledamageTabModel(
      listwhatisvehicItemList:
      listwhatisvehicItemList ?? this.listwhatisvehicItemList,
    );
  }

  @override
  List<Object?> get props => [listwhatisvehicItemList];
}
