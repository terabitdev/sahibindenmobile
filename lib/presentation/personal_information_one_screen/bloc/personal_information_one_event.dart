part of 'personal_information_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PersonalInformationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PersonalInformationOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PersonalInformationOne widget is first created.
class PersonalInformationOneInitialEvent extends PersonalInformationOneEvent {
  @override
  List<Object?> get props => [];
}
