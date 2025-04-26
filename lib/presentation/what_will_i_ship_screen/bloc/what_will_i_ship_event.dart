part of 'what_will_i_ship_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WhatWillIShip widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WhatWillIShipEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WhatWillIShip widget is first created.
class WhatWillIShipInitialEvent extends WhatWillIShipEvent {
  @override
  List<Object?> get props => [];
}
