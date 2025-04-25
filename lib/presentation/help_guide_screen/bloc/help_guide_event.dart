part of 'help_guide_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HelpGuide widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HelpGuideEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HelpGuide widget is first created.
class HelpGuideInitialEvent extends HelpGuideEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ExpandableList selection

// ignore_for_file: must_be_immutable
class UpdateExpandableListEvent extends HelpGuideEvent {
  UpdateExpandableListEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
