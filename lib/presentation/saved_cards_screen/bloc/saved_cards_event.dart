part of 'saved_cards_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SavedCards widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SavedCardsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SavedCards widget is first created.
class SavedCardsInitialEvent extends SavedCardsEvent {
  @override
  List<Object?> get props => [];
}
