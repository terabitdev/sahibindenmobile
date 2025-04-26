part of 'yepy_bloc.dart';

/// Represents the state of Yepy in the application.

// ignore_for_file: must_be_immutable
class YepyState extends Equatable {
  YepyState({this.searchController, this.yepyModelObj});

  TextEditingController? searchController;

  YepyModel? yepyModelObj;

  @override
  List<Object?> get props => [searchController, yepyModelObj];
  YepyState copyWith({
    TextEditingController? searchController,
    YepyModel? yepyModelObj,
  }) {
    return YepyState(
      searchController: searchController ?? this.searchController,
      yepyModelObj: yepyModelObj ?? this.yepyModelObj,
    );
  }
}
