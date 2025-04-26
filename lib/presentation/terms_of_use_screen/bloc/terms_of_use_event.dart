part of 'terms_of_use_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TermsOfUse widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TermsOfUseEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TermsOfUse widget is first created.
class TermsOfUseInitialEvent extends TermsOfUseEvent {
  @override
  List<Object?> get props => [];
}
