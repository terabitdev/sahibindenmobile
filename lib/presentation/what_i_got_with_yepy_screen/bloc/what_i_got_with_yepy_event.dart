part of 'what_i_got_with_yepy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WhatIGotWithYepy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WhatIGotWithYepyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WhatIGotWithYepy widget is first created.
class WhatIGotWithYepyInitialEvent extends WhatIGotWithYepyEvent {
  @override
  List<Object?> get props => [];
}
