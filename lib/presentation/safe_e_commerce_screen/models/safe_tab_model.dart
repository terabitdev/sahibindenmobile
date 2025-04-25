import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'safe_ecommerce_item_model.dart';

/// This class is used in the [safe_tab_page] screen.

// ignore_for_file: must_be_immutable
class SafeTabModel extends Equatable {
  SafeTabModel({this.safeEcommerceItemList = const []});

  List<SafeEcommerceItemModel> safeEcommerceItemList;

  SafeTabModel copyWith({List<SafeEcommerceItemModel>? safeEcommerceItemList}) {
    return SafeTabModel(
      safeEcommerceItemList:
      safeEcommerceItemList ?? this.safeEcommerceItemList,
    );
  }

  @override
  List<Object?> get props => [safeEcommerceItemList];
}
