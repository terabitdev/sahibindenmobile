part of 'corporate_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CorporateAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CorporateAccountEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CorporateAccount widget is first created.
class CorporateAccountInitialEvent extends CorporateAccountEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ExpandableList selection

// ignore_for_file: must_be_immutable
class UpdateExpandableListEvent extends CorporateAccountEvent {
  UpdateExpandableListEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
