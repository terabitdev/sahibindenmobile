part of 'summary_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Summary widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SummaryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Summary widget is first created.
class SummaryInitialEvent extends SummaryEvent {
  @override
  List<Object?> get props => [];
}
