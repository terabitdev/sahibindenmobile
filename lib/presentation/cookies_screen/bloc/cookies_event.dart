part of 'cookies_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Cookies widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CookiesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Cookies widget is first created.
class CookiesInitialEvent extends CookiesEvent {
  @override
  List<Object?> get props => [];
}
