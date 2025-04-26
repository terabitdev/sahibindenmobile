import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'summary_three_item_model.dart';

/// This class defines the variables used in the [summary_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SummaryModel extends Equatable {
  SummaryModel({this.summaryThreeItemList = const []});

  List<SummaryThreeItemModel> summaryThreeItemList;

  SummaryModel copyWith({List<SummaryThreeItemModel>? summaryThreeItemList}) {
    return SummaryModel(
      summaryThreeItemList: summaryThreeItemList ?? this.summaryThreeItemList,
    );
  }

  @override
  List<Object?> get props => [summaryThreeItemList];
}
