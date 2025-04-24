part of 'category_selection_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategorySelection widget.
/// Events must be immutable and implement the [Equatable] interface.
class CategorySelectionEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CategorySelection widget is first created.
class CategorySelectionInitialEvent extends CategorySelectionEvent {
  @override
  List<Object?> get props => [];
}
