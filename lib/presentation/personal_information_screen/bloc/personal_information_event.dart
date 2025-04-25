part of 'personal_information_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PersonalInformation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PersonalInformationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PersonalInformation widget is first created.
class PersonalInformationInitialEvent extends PersonalInformationEvent {
  @override
  List<Object?> get props => [];
}
