part of 'terms_of_use_one_bloc.dart';

/// Represents the state of TermsOfUseOne in the application.

// ignore_for_file: must_be_immutable
class TermsOfUseOneState extends Equatable {
  TermsOfUseOneState({this.searchController, this.termsOfUseOneModelObj});

  TextEditingController? searchController;

  TermsOfUseOneModel? termsOfUseOneModelObj;

  @override
  List<Object?> get props => [searchController, termsOfUseOneModelObj];
  TermsOfUseOneState copyWith({
    TextEditingController? searchController,
    TermsOfUseOneModel? termsOfUseOneModelObj,
  }) {
    return TermsOfUseOneState(
      searchController: searchController ?? this.searchController,
      termsOfUseOneModelObj:
      termsOfUseOneModelObj ?? this.termsOfUseOneModelObj,
    );
  }
}
