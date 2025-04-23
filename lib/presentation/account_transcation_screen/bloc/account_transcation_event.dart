part of 'account_transcation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// AccountTranscation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AccountTranscationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AccountTranscation widget is first created.
class AccountTranscationInitialEvent extends AccountTranscationEvent {
  @override
  List<Object?> get props => [];
}

/// Event for changing ExpandableList selection.
class UpdateExpandableListEvent extends AccountTranscationEvent {
  UpdateExpandableListEvent({required this.index, this.isSelected});

  final int index;
  final bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
