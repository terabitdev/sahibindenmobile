part of 'comparison_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ComparisonList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ComparisonListEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ComparisonList widget is first created.
class ComparisonListInitialEvent extends ComparisonListEvent {
  @override
  List<Object?> get props => [];
}
