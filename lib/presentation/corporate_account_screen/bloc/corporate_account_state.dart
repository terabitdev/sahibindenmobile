part of 'corporate_account_bloc.dart';

/// Represents the state of CorporateAccount in the application.

// ignore_for_file: must_be_immutable
class CorporateAccountState extends Equatable {
  CorporateAccountState({this.searchController, this.corporateAccountModelObj});

  TextEditingController? searchController;

  CorporateAccountModel? corporateAccountModelObj;

  @override
  List<Object?> get props => [searchController, corporateAccountModelObj];
  CorporateAccountState copyWith({
    TextEditingController? searchController,
    CorporateAccountModel? corporateAccountModelObj,
  }) {
    return CorporateAccountState(
      searchController: searchController ?? this.searchController,
      corporateAccountModelObj:
      corporateAccountModelObj ?? this.corporateAccountModelObj,
    );
  }
}
