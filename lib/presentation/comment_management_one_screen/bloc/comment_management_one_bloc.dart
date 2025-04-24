import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/comment_management_one_model.dart';
part 'comment_management_one_event.dart';
part 'comment_management_one_state.dart';

/// A bloc that manages the state of a CommentManagementOne according to the event that is dispatched to it.
class CommentManagementOneBloc
    extends Bloc<CommentManagementOneEvent, CommentManagementOneState> {
  CommentManagementOneBloc(CommentManagementOneState initialState)
      : super(initialState) {
    on<CommentManagementOneInitialEvent>(_onInitialize);
  }
  _onInitialize(
    CommentManagementOneInitialEvent event,
    Emitter<CommentManagementOneState> emit,
  ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
        nametwoController: TextEditingController(),
        formtextfillController: TextEditingController(),
        formtextfill1Controller: TextEditingController(),
        commenttwoController: TextEditingController(),
      ),
    );
  }
}
