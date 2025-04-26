part of 'test_user_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TestUserFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TestUserFourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TestUserFour widget is first created.
class TestUserFourInitialEvent extends TestUserFourEvent {
  @override
  List<Object?> get props => [];
}
