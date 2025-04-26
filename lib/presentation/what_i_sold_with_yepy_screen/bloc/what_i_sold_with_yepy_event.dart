part of 'what_i_sold_with_yepy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WhatISoldWithYepy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WhatISoldWithYepyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WhatISoldWithYepy widget is first created.
class WhatISoldWithYepyInitialEvent extends WhatISoldWithYepyEvent {
  @override
  List<Object?> get props => [];
}
