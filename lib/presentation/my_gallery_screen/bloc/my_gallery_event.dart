part of 'my_gallery_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyGallery widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyGalleryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyGallery widget is first created.
class MyGalleryInitialEvent extends MyGalleryEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ExpandableList selection

// ignore_for_file: must_be_immutable
class UpdateExpandableListEvent extends MyGalleryEvent {
  UpdateExpandableListEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}

///Event for changing ExpandableList selection

// ignore_for_file: must_be_immutable
class UpdateExpandableList1Event extends MyGalleryEvent {
  UpdateExpandableList1Event({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
