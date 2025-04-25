part of 'past_queries_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PastQueries widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PastQueriesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PastQueries widget is first created.
class PastQueriesInitialEvent extends PastQueriesEvent {
  @override
  List<Object?> get props => [];
}
