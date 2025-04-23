part of 'ad_management_summary_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// AdManagementSummary widget.
///
/// Events must be immutable and implement the [Equatable] interface.
abstract class AdManagementSummaryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AdManagementSummary widget is first created.
class AdManagementSummaryInitialEvent extends AdManagementSummaryEvent {
  @override
  List<Object?> get props => [];
}
