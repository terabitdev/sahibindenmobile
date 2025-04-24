part of 'category_selection_bloc.dart';

/// Represents the state of CategorySelection in the application.// ignore_for_file: must_be_immutable
class CategorySelectionState extends Equatable {
  CategorySelectionState(
      {this.searchController, this.categorySelectionModelObj});
  TextEditingController? searchController;
  CategorySelectionModel? categorySelectionModelObj;
  @override
  List<Object?> get props => [searchController, categorySelectionModelObj];
  CategorySelectionState copyWith({
    TextEditingController? searchController,
    CategorySelectionModel? categorySelectionModelObj,
  }) {
    return CategorySelectionState(
      searchController: searchController ?? this.searchController,
      categorySelectionModelObj:
          categorySelectionModelObj ?? this.categorySelectionModelObj,
    );
  }
}
