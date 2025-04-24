part of 'comment_management_one_bloc.dart';

/// Represents the state of CommentManagementOne in the application.// ignore_for_file: must_be_immutable
class CommentManagementOneState extends Equatable {
  CommentManagementOneState(
      {this.searchController,
      this.nametwoController,
      this.formtextfillController,
      this.formtextfill1Controller,
      this.commenttwoController,
      this.commentManagementOneModelObj});
  TextEditingController? searchController;
  TextEditingController? nametwoController;
  TextEditingController? formtextfillController;
  TextEditingController? formtextfill1Controller;
  TextEditingController? commenttwoController;
  CommentManagementOneModel? commentManagementOneModelObj;
  @override
  List<Object?> get props => [
        searchController,
        nametwoController,
        formtextfillController,
        formtextfill1Controller,
        commenttwoController,
        commentManagementOneModelObj
      ];
  CommentManagementOneState copyWith({
    TextEditingController? searchController,
    TextEditingController? nametwoController,
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
    TextEditingController? commenttwoController,
    CommentManagementOneModel? commentManagementOneModelObj,
  }) {
    return CommentManagementOneState(
      searchController: searchController ?? this.searchController,
      nametwoController: nametwoController ?? this.nametwoController,
      formtextfillController:
          formtextfillController ?? this.formtextfillController,
      formtextfill1Controller:
          formtextfill1Controller ?? this.formtextfill1Controller,
      commenttwoController: commenttwoController ?? this.commenttwoController,
      commentManagementOneModelObj:
          commentManagementOneModelObj ?? this.commentManagementOneModelObj,
    );
  }
}
