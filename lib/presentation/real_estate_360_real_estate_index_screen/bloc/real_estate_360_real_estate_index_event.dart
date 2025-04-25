part of 'real_estate_360_real_estate_index_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RealEstate360RealEstateIndex widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class RealEstate360RealEstateIndexEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RealEstate360RealEstateIndex widget is first created.
class RealEstate360RealEstateIndexInitialEvent
    extends RealEstate360RealEstateIndexEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ExpandableList selection

// ignore_for_file: must_be_immutable
class UpdateExpandableListEvent extends RealEstate360RealEstateIndexEvent {
  UpdateExpandableListEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}

///Event for changing ExpandableList selection

// ignore_for_file: must_be_immutable
class UpdateExpandableList1Event extends RealEstate360RealEstateIndexEvent {
  UpdateExpandableList1Event({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}

///Event for changing ChipView selection

// ignore_for_file: must_be_immutable
class UpdateChipViewEvent extends RealEstate360RealEstateIndexEvent {
  UpdateChipViewEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
