part of 'problem_suggestion_post_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProblemSuggestionPost widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ProblemSuggestionPostEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ProblemSuggestionPost widget is first created.
class ProblemSuggestionPostInitialEvent extends ProblemSuggestionPostEvent {
  @override
  List<Object?> get props => [];
}
