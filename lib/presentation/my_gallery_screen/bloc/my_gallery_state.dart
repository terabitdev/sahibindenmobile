part of 'my_gallery_bloc.dart';

/// Represents the state of MyGallery in the application.

// ignore_for_file: must_be_immutable
class MyGalleryState extends Equatable {
  MyGalleryState({this.searchController, this.myGalleryModelObj});

  TextEditingController? searchController;

  MyGalleryModel? myGalleryModelObj;

  @override
  List<Object?> get props => [searchController, myGalleryModelObj];
  MyGalleryState copyWith({
    TextEditingController? searchController,
    MyGalleryModel? myGalleryModelObj,
  }) {
    return MyGalleryState(
      searchController: searchController ?? this.searchController,
      myGalleryModelObj: myGalleryModelObj ?? this.myGalleryModelObj,
    );
  }
}
