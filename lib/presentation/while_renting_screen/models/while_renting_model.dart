import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'while_renting_item_model.dart';

/// This class defines the variables used in the [while_renting_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WhileRentingModel extends Equatable {
  WhileRentingModel({this.whileRentingItemList = const []});

  List<WhileRentingItemModel> whileRentingItemList;

  WhileRentingModel copyWith(
      {List<WhileRentingItemModel>? whileRentingItemList}) {
    return WhileRentingModel(
      whileRentingItemList: whileRentingItemList ?? this.whileRentingItemList,
    );
  }

  @override
  List<Object?> get props => [whileRentingItemList];
}
