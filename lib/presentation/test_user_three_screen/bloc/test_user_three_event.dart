part of 'test_user_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TestUserThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TestUserThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TestUserThree widget is first created.
class TestUserThreeInitialEvent extends TestUserThreeEvent {
  @override
  List<Object?> get props => [];
}
