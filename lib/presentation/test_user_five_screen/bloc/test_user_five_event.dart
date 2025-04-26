part of 'test_user_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TestUserFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TestUserFiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TestUserFive widget is first created.
class TestUserFiveInitialEvent extends TestUserFiveEvent {
  @override
  List<Object?> get props => [];
}
