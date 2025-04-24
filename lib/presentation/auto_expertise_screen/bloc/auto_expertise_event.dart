part of 'auto_expertise_bloc.dart';

/// Abstract class for all events that can be dispatched from the///AutoExpertise widget.
/// Events must be immutable and implement the [Equatable] interface.
class AutoExpertiseEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AutoExpertise widget is first created.
class AutoExpertiseInitialEvent extends AutoExpertiseEvent {
  @override
  List<Object?> get props => [];
}
