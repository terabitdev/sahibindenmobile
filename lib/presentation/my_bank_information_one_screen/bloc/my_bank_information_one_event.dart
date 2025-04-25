part of 'my_bank_information_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyBankInformationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyBankInformationOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyBankInformationOne widget is first created.
class MyBankInformationOneInitialEvent extends MyBankInformationOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBoxEvent extends MyBankInformationOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
