part of 'comparison_list_bloc.dart';

/// Represents the state of ComparisonList in the application.

// ignore_for_file: must_be_immutable
class ComparisonListState extends Equatable {
  ComparisonListState({this.comparisonListModelObj});

  ComparisonListModel? comparisonListModelObj;

  @override
  List<Object?> get props => [comparisonListModelObj];
  ComparisonListState copyWith({ComparisonListModel? comparisonListModelObj}) {
    return ComparisonListState(
      comparisonListModelObj:
      comparisonListModelObj ?? this.comparisonListModelObj,
    );
  }
}
