part of 'ad_management_summary_bloc.dart';

/// Represents the state of AdManagementSummary in the application.
// ignore_for_file: must_be_immutable
class AdManagementSummaryState extends Equatable {
  AdManagementSummaryState({this.adManagementSummaryModelObj});

  AdManagementSummaryModel? adManagementSummaryModelObj;

  @override
  List<Object?> get props => [adManagementSummaryModelObj];

  AdManagementSummaryState copyWith({
    AdManagementSummaryModel? adManagementSummaryModelObj,
  }) {
    return AdManagementSummaryState(
      adManagementSummaryModelObj:
      adManagementSummaryModelObj ?? this.adManagementSummaryModelObj,
    );
  }
}
