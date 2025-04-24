part of 'contracts_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Contracts widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ContractsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Contracts widget is first created.
class ContractsInitialEvent extends ContractsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ExpandableList selection

// ignore_for_file: must_be_immutable
class UpdateExpandableListEvent extends ContractsEvent {
  UpdateExpandableListEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
