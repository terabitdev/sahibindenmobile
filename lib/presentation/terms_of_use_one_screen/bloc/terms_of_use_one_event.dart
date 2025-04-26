part of 'terms_of_use_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TermsOfUseOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TermsOfUseOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TermsOfUseOne widget is first created.
class TermsOfUseOneInitialEvent extends TermsOfUseOneEvent {
  @override
  List<Object?> get props => [];
}
