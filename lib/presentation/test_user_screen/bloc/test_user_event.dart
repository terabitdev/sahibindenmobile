part of 'test_user_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TestUser widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TestUserEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TestUser widget is first created.
class TestUserInitialEvent extends TestUserEvent {
  @override
  List<Object?> get props => [];
}
