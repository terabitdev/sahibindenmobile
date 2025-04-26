part of 'test_user_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TestUserTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TestUserTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TestUserTwo widget is first created.
class TestUserTwoInitialEvent extends TestUserTwoEvent {
  @override
  List<Object?> get props => [];
}
