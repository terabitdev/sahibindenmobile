import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'yepy_three_item_model.dart';

/// This class defines the variables used in the [yepy_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class YepyModel extends Equatable {
  YepyModel({this.yepyThreeItemList = const []});

  List<YepyThreeItemModel> yepyThreeItemList;

  YepyModel copyWith({List<YepyThreeItemModel>? yepyThreeItemList}) {
    return YepyModel(
      yepyThreeItemList: yepyThreeItemList ?? this.yepyThreeItemList,
    );
  }

  @override
  List<Object?> get props => [yepyThreeItemList];
}
