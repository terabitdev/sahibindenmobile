import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'credit_three_item_model.dart';

/// This class is used in the [creditconsumer_tab_page] screen.

// ignore_for_file: must_be_immutable
class CreditconsumerTabModel extends Equatable {
  CreditconsumerTabModel({this.creditThreeItemList = const []});

  List<CreditThreeItemModel> creditThreeItemList;

  CreditconsumerTabModel copyWith(
      {List<CreditThreeItemModel>? creditThreeItemList}) {
    return CreditconsumerTabModel(
      creditThreeItemList: creditThreeItemList ?? this.creditThreeItemList,
    );
  }

  @override
  List<Object?> get props => [creditThreeItemList];
}
