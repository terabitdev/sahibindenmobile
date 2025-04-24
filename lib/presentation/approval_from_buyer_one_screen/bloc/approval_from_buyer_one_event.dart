part of 'approval_from_buyer_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ApprovalFromBuyerOne widget.
/// Events must be immutable and implement the [Equatable] interface.
class ApprovalFromBuyerOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ApprovalFromBuyerOne widget is first created.
class ApprovalFromBuyerOneInitialEvent extends ApprovalFromBuyerOneEvent {
  @override
  List<Object?> get props => [];
}
