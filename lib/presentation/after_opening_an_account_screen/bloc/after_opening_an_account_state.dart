part of 'after_opening_an_account_bloc.dart';

/// Represents the state of AfterOpeningAnAccount in the application.

// ignore_for_file: must_be_immutable
class AfterOpeningAnAccountState extends Equatable {
  AfterOpeningAnAccountState(
      {this.searchController, this.afterOpeningAnAccountModelObj});

  TextEditingController? searchController;

  AfterOpeningAnAccountModel? afterOpeningAnAccountModelObj;

  @override
  List<Object?> get props => [searchController, afterOpeningAnAccountModelObj];
  AfterOpeningAnAccountState copyWith({
    TextEditingController? searchController,
    AfterOpeningAnAccountModel? afterOpeningAnAccountModelObj,
  }) {
    return AfterOpeningAnAccountState(
      searchController: searchController ?? this.searchController,
      afterOpeningAnAccountModelObj:
      afterOpeningAnAccountModelObj ?? this.afterOpeningAnAccountModelObj,
    );
  }
}
