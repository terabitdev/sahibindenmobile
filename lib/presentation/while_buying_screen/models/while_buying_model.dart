import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'while_buying_item_model.dart';

/// This class defines the variables used in the [while_buying_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WhileBuyingModel extends Equatable {
  WhileBuyingModel({this.whileBuyingItemList = const []});

  List<WhileBuyingItemModel> whileBuyingItemList;

  WhileBuyingModel copyWith({List<WhileBuyingItemModel>? whileBuyingItemList}) {
    return WhileBuyingModel(
      whileBuyingItemList: whileBuyingItemList ?? this.whileBuyingItemList,
    );
  }

  @override
  List<Object?> get props => [whileBuyingItemList];
}
