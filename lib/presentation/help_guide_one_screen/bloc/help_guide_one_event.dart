part of 'help_guide_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HelpGuideOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HelpGuideOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HelpGuideOne widget is first created.
class HelpGuideOneInitialEvent extends HelpGuideOneEvent {
  @override
  List<Object?> get props => [];
}
