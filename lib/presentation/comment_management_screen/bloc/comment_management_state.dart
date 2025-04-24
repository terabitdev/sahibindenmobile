part of 'comment_management_bloc.dart';

/// Represents the state of CommentManagement in the application.// ignore_for_file: must_be_immutable
class CommentManagementState extends Equatable {
  CommentManagementState({this.commentManagementModelObj});
  CommentManagementModel? commentManagementModelObj;
  @override
  List<Object?> get props => [commentManagementModelObj];
  CommentManagementState copyWith(
      {CommentManagementModel? commentManagementModelObj}) {
    return CommentManagementState(
      commentManagementModelObj:
          commentManagementModelObj ?? this.commentManagementModelObj,
    );
  }
}
