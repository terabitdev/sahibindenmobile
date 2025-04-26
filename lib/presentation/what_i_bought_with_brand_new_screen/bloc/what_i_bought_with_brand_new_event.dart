part of 'what_i_bought_with_brand_new_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WhatIBoughtWithBrandNew widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WhatIBoughtWithBrandNewEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WhatIBoughtWithBrandNew widget is first created.
class WhatIBoughtWithBrandNewInitialEvent extends WhatIBoughtWithBrandNewEvent {
  @override
  List<Object?> get props => [];
}
