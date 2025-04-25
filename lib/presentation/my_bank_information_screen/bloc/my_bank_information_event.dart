part of 'my_bank_information_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyBankInformation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyBankInformationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyBankInformation widget is first created.
class MyBankInformationInitialEvent extends MyBankInformationEvent {
  @override
  List<Object?> get props => [];
}
