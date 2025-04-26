import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'while_selling_item_model.dart';

/// This class defines the variables used in the [while_selling_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WhileSellingModel extends Equatable {
  WhileSellingModel({this.whileSellingItemList = const []});

  List<WhileSellingItemModel> whileSellingItemList;

  WhileSellingModel copyWith(
      {List<WhileSellingItemModel>? whileSellingItemList}) {
    return WhileSellingModel(
      whileSellingItemList: whileSellingItemList ?? this.whileSellingItemList,
    );
  }

  @override
  List<Object?> get props => [whileSellingItemList];
}
