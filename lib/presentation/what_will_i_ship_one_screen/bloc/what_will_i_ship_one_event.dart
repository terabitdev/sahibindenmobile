part of 'what_will_i_ship_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WhatWillIShipOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WhatWillIShipOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WhatWillIShipOne widget is first created.
class WhatWillIShipOneInitialEvent extends WhatWillIShipOneEvent {
  @override
  List<Object?> get props => [];
}
