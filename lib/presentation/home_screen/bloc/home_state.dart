part of 'home_bloc.dart';

/// Represents the state of Home in the application.

// ignore_for_file: must_be_immutable
class HomeState extends Equatable {
  HomeState(
      {this.searchController,
        this.scrollviewOneTabModelObj,
        this.homeInitialModelObj,
        this.homeModelObj});

  TextEditingController? searchController;

  HomeModel? homeModelObj;

  ScrollviewOneTabModel? scrollviewOneTabModelObj;

  HomeInitialModel? homeInitialModelObj;

  @override
  List<Object?> get props => [
    searchController,
    scrollviewOneTabModelObj,
    homeInitialModelObj,
    homeModelObj
  ];
  HomeState copyWith({
    TextEditingController? searchController,
    ScrollviewOneTabModel? scrollviewOneTabModelObj,
    HomeInitialModel? homeInitialModelObj,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      searchController: searchController ?? this.searchController,
      scrollviewOneTabModelObj:
      scrollviewOneTabModelObj ?? this.scrollviewOneTabModelObj,
      homeInitialModelObj: homeInitialModelObj ?? this.homeInitialModelObj,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
