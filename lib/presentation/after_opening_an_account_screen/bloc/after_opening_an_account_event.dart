part of 'after_opening_an_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the///AfterOpeningAnAccount widget.////// Events must be immutable and implement the [Equatable] interface.
///
class AfterOpeningAnAccountEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AfterOpeningAnAccount widget is first created.
