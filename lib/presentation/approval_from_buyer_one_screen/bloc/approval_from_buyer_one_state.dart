part of 'approval_from_buyer_one_bloc.dart';

/// Represents the state of ApprovalFromBuyerOne in the application.
/// // ignore_for_file: must_be_immutable
class ApprovalFromBuyerOneState extends Equatable {
  ApprovalFromBuyerOneState(
      {this.searchController,
      this.nameController,
      this.formtextfillController,
      this.formtextfill1Controller,
      this.dateController,
      this.approvalFromBuyerOneModelObj});
  TextEditingController? searchController;
  TextEditingController? nameController;
  TextEditingController? formtextfillController;
  TextEditingController? formtextfill1Controller;
  TextEditingController? dateController;
  ApprovalFromBuyerOneModel? approvalFromBuyerOneModelObj;
  @override
  List<Object?> get props => [
        searchController,
        nameController,
        formtextfillController,
        formtextfill1Controller,
        dateController,
        approvalFromBuyerOneModelObj
      ];
  ApprovalFromBuyerOneState copyWith({
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
    TextEditingController? dateController,
    ApprovalFromBuyerOneModel? approvalFromBuyerOneModelObj,
  }) {
    return ApprovalFromBuyerOneState(
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      formtextfillController:
          formtextfillController ?? this.formtextfillController,
      formtextfill1Controller:
          formtextfill1Controller ?? this.formtextfill1Controller,
      dateController: dateController ?? this.dateController,
      approvalFromBuyerOneModelObj:
          approvalFromBuyerOneModelObj ?? this.approvalFromBuyerOneModelObj,
    );
  }
}
