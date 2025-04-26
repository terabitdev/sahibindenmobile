part of 'test_user_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TestUserOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TestUserOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TestUserOne widget is first created.
class TestUserOneInitialEvent extends TestUserOneEvent {
  @override
  List<Object?> get props => [];
}
