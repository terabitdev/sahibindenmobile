part of 'product_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ProductDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ProductDetails widget is first created.
class ProductDetailsInitialEvent extends ProductDetailsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection

// ignore_for_file: must_be_immutable
class UpdateChipViewEvent extends ProductDetailsEvent {
  UpdateChipViewEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
