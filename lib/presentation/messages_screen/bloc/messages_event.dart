part of 'messages_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Messages widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MessagesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Messages widget is first created.
class MessagesInitialEvent extends MessagesEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection

// ignore_for_file: must_be_immutable
class UpdateChipViewEvent extends MessagesEvent {
  UpdateChipViewEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
